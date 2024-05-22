import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/ContainerHomePage.dart';
import 'package:progaming/Views/widgets/HomePageLevelButton.dart';
import 'package:progaming/Views/widgets/ProgressBar.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.user});

  final UserModel user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isL1Selected = true;
  bool isL2Selected = true;
  bool isL3Selected = true;
  double heightSizedBox = 40;

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.434;
    double imageSize = MediaQuery.of(context).size.width * 0.45;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              widget.user.moedaAtual.toString(),
              style: MyThemes.josefinSansBold(
                  fontSize: 22, textColor: Colors.white),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/Coin.png',
              width: 23,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              widget.user.vidas.toString(),
              style: MyThemes.josefinSansBold(
                  fontSize: 22, textColor: Colors.white),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/Heart.png',
              width: 23,
            ),
            const SizedBox(
              width: 15,
            ),
          ]),
        ],
        backgroundColor: MyThemes.lightPurple,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            width: double.infinity,
            height: 41,
            color: const Color(0xFFB5179E),
            child: Text(
              'Introdução a programação - fundamentos',
              style: MyThemes.josefinSansBold(
                  fontSize: 16, textColor: Colors.white),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ContainerHomePage(
                    containerWidth: containerWidth,
                    userprogress: widget.user.progresso[0]['lista1'],
                    imgPath: 'assets/images/Runner.png',
                    title: 'Inicio da Jornada',
                    isLeft: true,
                    boxColor: const Color(0xFFF72585),
                    imgSize: imageSize,
                    onTap: () {
                      setState(() {
                        isL1Selected = !isL1Selected;
                      });
                    },
                    listLength: 4,
                  ),
                  isL1Selected
                      ? Column(
                          children: [
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 0.7,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 0,
                                      'ID': 0,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista1'],
                              level: 0,
                              listID: 0,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 0.85,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 0,
                                      'ID': 1,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista1'],
                              level: 1,
                              listID: 0,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 1.05,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 0,
                                      'ID': 2,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista1'],
                              level: 2,
                              listID: 0,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 1.2,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 0,
                                      'ID': 3,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista1'],
                              level: 3,
                              listID: 0,
                            ),
                          ],
                        )
                      : Container(),
                  ContainerHomePage(
                    containerWidth: containerWidth,
                    userprogress: widget.user.progresso[0]['lista2'],
                    imgPath: 'assets/images/Car.png',
                    title: 'Viajando Pela Lógica da Programação',
                    isLeft: false,
                    boxColor: const Color(0xFFB5179E),
                    imgSize: imageSize * 0.9,
                    onTap: () {
                      setState(() {
                        isL2Selected = !isL2Selected;
                      });
                      /*Navigator.pushNamed(context, '/exercise-screen',
                          arguments: {
                            'user': widget.user,
                            'ListID': 1,
                          });*/
                    },
                    listLength: 3,
                  ),
                  isL2Selected
                      ? Column(
                          children: [
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 1.2,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 1,
                                      'ID': 0,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista2'],
                              level: 0,
                              listID: 1,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 1,
                                      'ID': 1,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista2'],
                              level: 1,
                              listID: 1,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 0.7,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 1,
                                      'ID': 2,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista2'],
                              level: 2,
                              listID: 1,
                            ),
                          ],
                        )
                      : Container(),
                  ContainerHomePage(
                    containerWidth: containerWidth,
                    userprogress: widget.user.progresso[0]['lista3'],
                    imgPath: 'assets/images/moon.png',
                    title: 'Missão no Espaço dos Algoritmos',
                    isLeft: true,
                    boxColor: const Color(0xFF851FC8),
                    imgSize: imageSize * 1.1,
                    onTap: () {
                      setState(() {
                        isL3Selected = !isL3Selected;
                      });
                      /*Navigator.pushNamed(context, '/exercise-screen',
                          arguments: {
                            'user': widget.user,
                            'ListID': 2,
                          });*/
                    },
                    listLength: 3,
                  ),
                  isL3Selected
                      ? Column(
                          children: [
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 0.7,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 2,
                                      'ID': 0,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista3'],
                              level: 0,
                              listID: 2,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 2,
                                      'ID': 1,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista3'],
                              level: 1,
                              listID: 2,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                            HomePageLevelButton(
                              imageSize: imageSize * 1.2,
                              ontap: () {
                                Navigator.pushNamed(context, '/exercise-screen',
                                    arguments: {
                                      'user': widget.user,
                                      'ListID': 2,
                                      'ID': 2,
                                    });
                              },
                              progress: widget.user.progresso[0]['lista3'],
                              level: 2,
                              listID: 2,
                            ),
                            SizedBox(
                              height: heightSizedBox,
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
