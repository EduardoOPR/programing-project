import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/StatisticsContainer.dart';
import 'package:progaming/controller/FirebaseService.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:firebase_auth/firebase_auth.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progaming/controller/FunctionsController.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key, required this.user});

  final UserModel user;

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseService _firebaseService = FirebaseService();
  final FunctionController _functionController = FunctionController();

  @override
  Widget build(BuildContext context) {
    _functionController.calcAchievements(user: widget.user);

    final User user = auth.currentUser!;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () async {
                  await auth.signOut();
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                icon: const Icon(Icons.logout))
          ],
          title: Text(
            'Seu Perfil',
            style:
                MyThemes.josefinSansBold(fontSize: 24, textColor: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: MyThemes.lightPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.displayName!,
                            style: MyThemes.josefinSansBold(
                                fontSize: 24, textColor: Colors.black),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Conta criada em 2024',
                            style: MyThemes.josefinSansLight(
                                fontSize: 16, textColor: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: MyThemes.lightPurple,
                    radius: 35,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 33,
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/Robo_Icon_Lado.png',
                    width: 87,
                  ),
                  Text(
                    'Estatísticas da conta',
                    style: MyThemes.josefinSansBold(
                        fontSize: 21, textColor: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              StatisticsContainer(
                quantity: widget.user.maxDiasSequencia,
                text: 'Dias de sequência',
                imagePath: 'assets/images/calendario.jpg',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              StatisticsContainer(
                quantity: widget.user.conquistas,
                text: 'Conquistas',
                imagePath: 'assets/images/trofeu.jpg',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              StatisticsContainer(
                quantity: widget.user.moedaTotal,
                text: 'Moedas ganhas',
                imagePath: 'assets/images/saco-dinheiro.jpg',
              ),
            ],
          ),
        ));
  }
}
