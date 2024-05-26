import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/controller/FirebaseService.dart';

class FirebaseController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseService _firebaseService = FirebaseService();

  Future<bool> cadastrarUsuario(
      {required String nome,
      required String email,
      required String senha,
      required context}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: senha);

      await userCredential.user!.updateDisplayName(nome);
      UserModel newuser = UserModel(
          id: userCredential.user!.uid,
          nome: nome,
          diasSequencia: 0,
          maxDiasSequencia: 0,
          progresso: [
            {"lista1": 0, "lista2": 0, "lista3": 0}
          ],
          moedaTotal: 0,
          moedaAtual: 0,
          conquistas: 0,
          vidas: 5,
          hasBuff: false,
          hasShield: false);

      _firebaseService.createUser(user: newuser);
      return true;
    } on FirebaseAuthException catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'A senha deve ter pelo menos 6 caracteres',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        backgroundColor: Colors.redAccent,
      ));
      return false;
    }
  }

  loginUsuario(
      {required String email, required String senha, required context}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: senha);
      if (userCredential != null) {
        Map<String, dynamic> userData = await _firebaseService.getUser(
            userId: _firebaseAuth.currentUser!.uid);
        final UserModel user = UserModel.parse(userData);
        Navigator.pushNamed(context, '/main-page-screen', arguments: user);
      }
    } on FirebaseAuthException catch (e) {
      print('_____________________________________________');
      print(e.code);
      if (e.code == 'invalid-credential') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Email ou Senha incorretos',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          backgroundColor: Colors.redAccent,
        ));
      }
    }
  }
}
