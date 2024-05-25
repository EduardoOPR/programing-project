import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:progaming/Views/widgets/flutter_console_widget/flutter_console.dart';
import 'package:progaming/Views/programming_blocks/lib/example_sections/console/console_section.dart';
import 'package:progaming/Views/programming_blocks/lib/example_sections/string/strings_section.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:progaming/Views/widgets/ExerciseAppBar.dart';
import 'package:progaming/Views/widgets/ExerciseColoredButton.dart';
import 'package:progaming/Views/widgets/OptionButton.dart';
import 'package:progaming/controller/TimerControler.dart';
import 'package:progaming/models/ExerciseList.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ExerciseScreenInfo extends StatefulWidget {
  ExerciseScreenInfo(
      {super.key,
      required this.imgPath,
      required this.boxText,
      required this.title,
      this.progress = 0,
      this.total = 9,
      this.onTap,
      required this.isExercise,
      this.exerciseType = '',
      this.option = const [],
      this.showCategory = const [true, true, true, true, true, true],
      //this.answerIndex = 0,
      this.answer = 5,
      this.vidas = 6,
      this.imgScale = 1,
      this.isReview = false,
      this.isSelected = false,
      this.blockString = '',
      required this.selectedIndex});

  final String imgPath;
  final String title;
  final TextSpan boxText;
  final bool isExercise;
  bool isReview;
  int vidas;
  int answer;
  String exerciseType;
  int progress;
  int total;
  Function()? onTap;
  List<String> option;
  //int answerIndex;
  List<bool> selectedIndex;
  double imgScale;
  bool isSelected;
  List<bool> showCategory;
  String blockString;

  @override
  State<ExerciseScreenInfo> createState() => _ExerciseScreenInfoState();
}

class _ExerciseScreenInfoState extends State<ExerciseScreenInfo> {
  final ExerciseController _exerciseController = ExerciseController();

  ontapFunction(int currentIndex) {
    _exerciseController.setSelectQuestion(currentIndex);
    setState(() {
      if (widget.selectedIndex[currentIndex] == true) {
        widget.selectedIndex[currentIndex] = false;
        widget.isSelected = false;
      } else {
        for (int i = 0; i < widget.selectedIndex.length; i++) {
          widget.selectedIndex[i] = false;
        }
        widget.selectedIndex[currentIndex] = true;
        widget.isSelected = true;
      }
    });
  }

  @override
  void initState() {
    if (widget.exerciseType == "2A") {
      var timerInfo = Provider.of<TimerInfo>(context, listen: false);
      Timer.periodic(const Duration(seconds: 1), (timer) {
        timerInfo.updateRemainingTime();
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Pegando a altura física do dispositivo sem usar MediaQuaery
    final double physicalHeight = WidgetsBinding
        .instance.platformDispatcher.views.first.physicalSize.height;
    final double devicePixelRatio =
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
    final double height = physicalHeight / devicePixelRatio;
    //Pegando a largura da mesma forma que a altura
    final double physicalWidth = WidgetsBinding
        .instance.platformDispatcher.views.first.physicalSize.width;
    final double width = physicalWidth / devicePixelRatio;

    const double vPadding = 30;
    double sizedBoxSpace = height * 0.07;

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: widget.isExercise
          ? Colors.white
          : widget.title == "Hora de praticar!"
              ? Colors.black
              : MyThemes.infoLightBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 30),
          child: widget.exerciseType == '2A' && widget.isExercise
              ? bodyExerciseScreen(sizedBoxSpace, vPadding, widget.exerciseType,
                  widget.imgPath, height, width)
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: vPadding, right: vPadding, bottom: 10),
                      //BARRA SUPERIOR
                      child: ExerciseAppBar(
                        progress: widget.progress,
                        total: widget.total,
                        vidas: widget.vidas,
                      ),
                    ),
                    widget.isReview
                        ? Padding(
                            padding: const EdgeInsets.only(
                                left: vPadding, right: vPadding, top: 10),
                            child: Row(
                              children: [
                                const Spacer(),
                                Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 192, 174, 10)),
                                  child: Center(
                                    child: Text(
                                      'Revisão',
                                      textAlign: TextAlign.end,
                                      style: MyThemes.josefinSansBold(
                                          fontSize: 18,
                                          textColor: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),

                    //CONTEÚDO DA PÁGINA
                    widget.isExercise
                        ? bodyExerciseScreen(sizedBoxSpace, vPadding,
                            widget.exerciseType, widget.imgPath, height, width)
                        : Expanded(
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: vPadding),
                                child: Text(
                                  widget.title,
                                  style: widget.title.length > 25
                                      ? widget.title.length > 50
                                          ? MyThemes.josefinSansRegular(
                                              fontSize: 18,
                                              textColor: widget.title ==
                                                      "Hora de praticar!"
                                                  ? Colors.white
                                                  : Colors.black)
                                          : MyThemes.josefinSansRegular(
                                              fontSize: 22,
                                              textColor: widget.title ==
                                                      "Hora de praticar!"
                                                  ? Colors.white
                                                  : Colors.black)
                                      : MyThemes.josefinSansBold(
                                          fontSize: 24,
                                          textColor: widget.title ==
                                                  "Hora de praticar!"
                                              ? Colors.white
                                              : Colors.black),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: vPadding),
                                padding: const EdgeInsets.all(14),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: MyThemes.superLightBlue,
                                  border: Border.all(width: 1),
                                ),
                                child: RichText(
                                  text: widget.boxText,
                                ),
                              ),
                              widget.imgPath == 'noimage'
                                  ? Container()
                                  : Center(
                                      child: Image.asset(
                                        widget.imgPath,
                                        width: width * widget.imgScale,
                                      ),
                                    ),
                            ],
                          )),

                    //BOTÃO CONTINUAR
                    ExerciseColoredButton(
                      buttonText: 'CONFIRMAR',
                      onTapFunction: widget.onTap,
                      isReady: widget.isExercise ? widget.isSelected : true,
                      dontHasBlur: widget.title == "Hora de praticar!",
                    )
                  ],
                ),
        ),
      ),
    );
  }

  Widget bodyExerciseScreen(double sizedBoxSpace, double vPadding, String type,
      String imgPath, double height, double width) {
    switch (type) {
      case '4A':
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: sizedBoxSpace * 0.5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: vPadding, vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.title,
                    style: MyThemes.josefinSansBold(fontSize: 24),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 90),
                    margin: EdgeInsets.symmetric(horizontal: vPadding),
                    padding: const EdgeInsets.all(14),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1),
                    ),
                    child: RichText(
                      text: widget.boxText,
                    ),
                  ),
                  Positioned(
                      right: 15,
                      bottom: -25,
                      child: Image.asset(
                        'assets/images/qRobot.png',
                        width: 60,
                      ))
                ],
              ),
              SizedBox(
                height: sizedBoxSpace,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ontapFunction(0);
                    },
                    child: OptionButton(
                      optionText: widget.option[0],
                      isSelected: widget.selectedIndex[0],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ontapFunction(1);
                    },
                    child: OptionButton(
                      optionText: widget.option[1],
                      isSelected: widget.selectedIndex[1],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ontapFunction(2);
                    },
                    child: OptionButton(
                      optionText: widget.option[2],
                      isSelected: widget.selectedIndex[2],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ontapFunction(3);
                    },
                    child: OptionButton(
                      optionText: widget.option[3],
                      isSelected: widget.selectedIndex[3],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sizedBoxSpace,
              ),
            ],
          ),
        );
      case '3A':
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: sizedBoxSpace * 0.2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: vPadding),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.title,
                    style: MyThemes.josefinSansBold(fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Image.asset(
                imgPath,
                width: width * 0.5 * widget.imgScale,
              ),
              SizedBox(
                height: sizedBoxSpace * 0.2,
              ),
              Container(
                constraints: const BoxConstraints(minHeight: 50),
                margin: EdgeInsets.symmetric(horizontal: vPadding),
                padding: const EdgeInsets.all(14),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                ),
                child: RichText(
                  text: widget.boxText,
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ontapFunction(0);
                    },
                    child: OptionButton(
                      optionText: widget.option[0],
                      isSelected: widget.selectedIndex[0],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ontapFunction(1);
                    },
                    child: OptionButton(
                      optionText: widget.option[1],
                      isSelected: widget.selectedIndex[1],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ontapFunction(2);
                    },
                    child: OptionButton(
                      optionText: widget.option[2],
                      isSelected: widget.selectedIndex[2],
                    ),
                  ),
                  if (widget.option.length > 3)
                    InkWell(
                      onTap: () {
                        ontapFunction(3);
                      },
                      child: OptionButton(
                        optionText: widget.option[3],
                        isSelected: widget.selectedIndex[3],
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: sizedBoxSpace * 0.3,
              ),
            ],
          ),
        );
      case '2A':
        final FlutterConsoleController consoleController =
            FlutterConsoleController();
        consoleController.hide();

        //AQUI
        ProgrammingBlocksProjectModel? projectModel;
        projectModel = ProgrammingBlocksProjectModel.fromJson(
          jsonDecode(
            widget.blockString,
          ),
        );

        /* convertendo um projectModel em uma String
        print(CalculatorAlgorithm.serializedCode);
        print('__________________________________________________________');
        String teste = jsonEncode(projectModel.toJson());
        print(teste);
        */

        //Reseta o timer sempre que uma nova tela do tipo Programação em blocos é chamada
        WidgetsBinding.instance.addPostFrameCallback((_) {
          var timerInfo = Provider.of<TimerInfo>(context, listen: false);
          timerInfo.resetTimer();
        });

        return Column(
          children: [
            Expanded(
              child: ProgrammingBlocks(
                projectModel: projectModel, //AQUI
                onProjectChange: (projectModel) async {
                  await Clipboard.setData(
                      ClipboardData(text: jsonEncode(projectModel.toJson())));
                },
                onChangeRunningState: (runningState) async {
                  switch (runningState) {
                    case RunningState.running:
                      consoleController.show();
                      break;
                    case RunningState.stoped:
                      consoleController.clear();
                      consoleController.hide();
                      break;
                  }
                },
                enableFunctions: widget.showCategory[0],
                sections: [
                  if (widget.showCategory[1])
                    ConsoleSection(
                      consoleController: consoleController,
                    ),
                  if (widget.showCategory[2]) FollowSection(),
                  if (widget.showCategory[3]) LogicSection(),
                  if (widget.showCategory[4]) NumbersSection(),
                  if (widget.showCategory[5]) StringsSection(),
                ],
              ),
            ),
            SingleChildScrollView(
              child: FlutterConsole(
                controller: consoleController,
                width: width,
                height: height / 3,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Consumer<TimerInfo>(
              builder: (context, data, child) {
                //data.resetTimer();
                return ExerciseColoredButton(
                  buttonText: data.getIsOver()
                      ? 'CONFIRMAR'
                      : data.getRemainingTime().toString(),
                  onTapFunction: widget.onTap,
                  isReady: data.getIsOver(),
                );
              },
            )
          ],
        );
      default:
        return Container();
    }
  }
}
