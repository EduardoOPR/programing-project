import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:progaming/controller/FunctionsController.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key, required this.user});

  final UserModel user;

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  //final FirebaseService _firebaseService = FirebaseService();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FunctionController _functionController = FunctionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Conquistas',
            style:
                MyThemes.josefinSansBold(fontSize: 24, textColor: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: MyThemes.lightPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: _functionController.calcMedals(user: widget.user),
            ),
          ),
        ));
  }
}
