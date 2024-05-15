import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:progaming/models/UserModel.dart';

//https://github.com/FigueredoMatheus/dom_tomas/blob/main/lib/firebase/cloud_firestore.dart

class FirebaseService {
  final CollectionReference _userFireStore =
      FirebaseFirestore.instance.collection('users');

  //CREATE
  Future<bool> createUser({required UserModel user}) async {
    try {
      await _userFireStore.doc(user.id).set(user.toJson());
      return true;
    } catch (e) {
      print("_______________________________");
      print(e);
      return false;
    }
  }

  //READ
  Future<Map<String, dynamic>> getUser({required String userId}) async {
    try {
      DocumentSnapshot userData = await _userFireStore.doc(userId).get();
      return userData.data() as Map<String, dynamic>;
    } catch (e) {
      return {'success': false};
    }
  }

  //UPDATE
  Future<bool> updateUserData({
    required UserModel data,
  }) async {
    try {
      await _userFireStore.doc(data.id).update(data.toJson());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  //DELETE
}
