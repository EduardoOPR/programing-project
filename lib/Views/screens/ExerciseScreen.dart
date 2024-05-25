//TODO Forma de adicionar uma tela de (Hora de corrigir os erros) e alterar os dados do usuário depois de concluir os exercícios

//import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:progaming/Views/screens/ExerciseScreenInfo.dart';
//import 'package:progaming/Views/screens/HomeScreen.dart';
import 'package:progaming/Views/screens/ResultScreen.dart';
import 'package:progaming/Views/widgets/ExerciseColoredButton.dart';
//import 'package:progaming/Views/widgets/ProgressExerciseBar.dart';
import 'package:progaming/controller/FirebaseService.dart';
import 'package:progaming/controller/FunctionsController.dart';
import 'package:progaming/controller/TimerControler.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:progaming/models/ExerciseList.dart';
import 'package:provider/provider.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen>
    with SingleTickerProviderStateMixin {
  final ExerciseController _exerciseController = ExerciseController();
  final FunctionController _functionController = FunctionController();
  int aux = 0;

  @override
  late List<ExerciseScreenInfo> exercisesList;
  late AnimationController controller;
  int lengthList = 0;
  late int exerciseID;
  late int ID;
  late UserModel user;
  final FirebaseService _firebaseService = FirebaseService();
  //late Map<String, dynamic> args;
  int pageIndex = 0;
  int auxIndex = 50;
  int erros = 0;
  int acertos = 0;
  //Puxar do usuário depois

  updatePages() {
    if (pageIndex == 0) {
      lengthList = exercisesList.length;
    }
    for (int i = 0; i < exercisesList.length; i++) {
      exercisesList[i].vidas = user.vidas;
      exercisesList[i].total = exercisesList.length;
      exercisesList[i].isSelected = false;
      exercisesList[i].onTap = () {
        //Se não for tela de exercicio
        if (!exercisesList[i].isExercise) {
          if (exercisesList[i + 1].exerciseType == '2A') {
            var timerInfo = Provider.of<TimerInfo>(context, listen: false);
            timerInfo.resetTimer();
          }
          setState(() {
            if (pageIndex < exercisesList[pageIndex].total - 1) {
              pageIndex++;
            } else {
              auxIndex = pageIndex - 1;
            }
            exercisesList[pageIndex].progress = pageIndex;
          });

          //A pergunta é do tipo programação em blocos
        } else if (exercisesList[i].exerciseType == '2A') {
          final snackBar = exerciseSnackBar(i, true, () {
            if (pageIndex < exercisesList[pageIndex].total - 1) {
              pageIndex++;
            } else {
              auxIndex = pageIndex - 1;
            }
            acertos++;
            exercisesList[pageIndex].progress = pageIndex;
            if (erros > 0 && pageIndex == lengthList && aux == 0) {
              aux++;
              lengthList++;
              final snackBar = errorPageSnackBar();

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            }
          });

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);

          //Resposta selecionada está correta
        } else if (exercisesList[i].answer ==
            _exerciseController.getSelectQuestion()) {
          final snackBar = exerciseSnackBar(i, true, () {
            if (pageIndex < exercisesList[pageIndex].total - 1) {
              pageIndex++;
            } else {
              auxIndex = pageIndex - 1;
            }
            acertos++;
            exercisesList[pageIndex].progress = pageIndex;
            if (erros > 0 && pageIndex == lengthList && aux == 0) {
              aux++;
              lengthList++;
              final snackBar = errorPageSnackBar();

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            }
          });

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);
          //Resposta selecionada está errada
        } else {
          final snackBar = exerciseSnackBar(i, false, () {
            user.vidas--;
            //Incluindo uma tela para indicicar que as agoram serão os exercícios repetidos que

            exercisesList.add(exercisesList[pageIndex]);
            exercisesList[pageIndex].total++;

            if (pageIndex < exercisesList[pageIndex].total - 1) {
              pageIndex++;
            } else {
              auxIndex = pageIndex - 1;
            }
            erros++;
            exercisesList[pageIndex].progress = pageIndex;

            if (erros > 0 && pageIndex == lengthList && aux == 0) {
              aux++;
              final snackBar = errorPageSnackBar();

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            }
          });

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);
        }
      };
    }
  }

  SnackBar errorPageSnackBar() {
    return SnackBar(
        elevation: 0,
        duration: const Duration(hours: 10),
        behavior: SnackBarBehavior.fixed,
        animation: controller,
        dismissDirection: DismissDirection.none,
        backgroundColor: Colors.white,
        content: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 80),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hora de corrigir os erros',
                  style: MyThemes.josefinSansBold(
                      fontSize: 32, textColor: MyThemes.lightBlue),
                ),
                Image.asset(
                  'assets/images/error.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                ExerciseColoredButton(
                  buttonText: 'CONTINUAR',
                  onTapFunction: () {
                    setState() {
                      aux++;
                    }

                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                  isReady: true,
                  isSnack: false,
                ),
              ],
            ),
          ),
        ));
  }

//Snack bar para quando um alternativa for selecionada
  SnackBar exerciseSnackBar(int i, bool isRight, Function() function) {
    return SnackBar(
        elevation: 0,
        duration: const Duration(hours: 10),
        behavior: SnackBarBehavior.fixed,
        dismissDirection: DismissDirection.none,
        backgroundColor: isRight ? MyThemes.lightGreen : MyThemes.lightRed,
        content: Container(
          //height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          color: isRight ? MyThemes.lightGreen : MyThemes.lightRed,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    isRight ? 'Correto!' : 'Incorreto!',
                    style: MyThemes.josefinSansBold(
                        fontSize: 24,
                        textColor: isRight ? MyThemes.Green : MyThemes.red),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                isRight
                    ? Container()
                    : Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Resposta correta: ',
                          style: MyThemes.josefinSansBold(
                              fontSize: 16,
                              textColor:
                                  isRight ? MyThemes.Green : MyThemes.red),
                        ),
                      ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      isRight
                          ? 'Parabéns, você acertou!'
                          : '${(exercisesList[i].answer + 1)}) ${exercisesList[i].option[exercisesList[i].answer]}',
                      style: MyThemes.josefinSansRegular(
                          fontSize: 16,
                          textColor: isRight ? MyThemes.Green : MyThemes.red),
                      textAlign: TextAlign.left),
                ),
                const SizedBox(
                  height: 15,
                ),
                ExerciseColoredButton(
                  buttonText: 'CONTINUAR',
                  onTapFunction: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    setState(function);
                  },
                  isReady: true,
                  isRight: isRight,
                  isSnack: true,
                )
              ],
            ),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 0),
      vsync: this,
    );
  }

  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    user = args['user'];
    exerciseID = args['ListID'];
    ID = args['ID'];
    String auxL = exerciseID == 0
        ? 'lista1'
        : exerciseID == 1
            ? 'lista2'
            : 'lista3';
    exercisesList = _exerciseController.listExercise[exerciseID][ID];
    updatePages();

    if (pageIndex >= auxIndex) {
      double pAcerto = acertos / (acertos + erros) * 100;
      int moedas = pAcerto == 100
          ? 100
          : pAcerto > 50
              ? 80
              : 50;

      if (user.hasBuff == true) {
        if (pAcerto == 100) {
          moedas = moedas * 2;
        }
        user.hasBuff = false;
      }
      user.moedaAtual += moedas;
      user.moedaTotal += moedas;

      if (user.progresso[0][auxL] <= ID) {
        user.progresso[0][auxL]++;
      }

      if (user.diasSequencia == user.maxDiasSequencia) {
        user.diasSequencia++;
        user.maxDiasSequencia++;
      } else {
        user.diasSequencia++;
      }

      return ResultScreen(
        moedas: moedas,
        pAcerto: pAcerto,
        ontap: () async {
          await _firebaseService.updateUserData(data: user);
          _functionController.pushPage(context, user);
        },
      );
    } else {
      return exercisesList[pageIndex];
      // _exerciseController.listExercise[exerciseID][userProgress][pageIndex];
    }
  }
}
