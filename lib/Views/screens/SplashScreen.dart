import 'dart:async';

import 'package:collection/collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:progaming/controller/FirebaseService.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FirebaseService _firebaseService = FirebaseService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      if (_firebaseAuth.currentUser != null) {
        //Usuário logado
        Map<String, dynamic> userData = await _firebaseService.getUser(
            userId: _firebaseAuth.currentUser!.uid);
        final UserModel user = UserModel.parse(userData);

        Navigator.pushNamedAndRemoveUntil(
            context, '/main-page-screen', (route) => false,
            arguments: user);
      } else {
        //Usuário não logado
        Navigator.pushNamedAndRemoveUntil(
            context, '/login-screen', (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.deepPurple,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Image.asset(
            'assets/images/Robo_Icon.png',
            width: 100,
          ),
        ),
      ),
    );
  }
}
