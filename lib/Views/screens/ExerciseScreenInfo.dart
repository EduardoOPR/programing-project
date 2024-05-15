import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/ExerciseAppBar.dart';
import 'package:progaming/Views/widgets/ExerciseColoredButton.dart';
import 'package:progaming/Views/widgets/OptionButton.dart';
import 'package:progaming/models/ExerciseList.dart';
import 'package:progaming/themes/MyThemes.dart';

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
      //this.answerIndex = 0,
      this.answer = 5,
      this.vidas = 6,
      this.imgScale = 1,
      this.isReview = false,
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

  @override
  State<ExerciseScreenInfo> createState() => _ExerciseScreenInfoState();
}

class _ExerciseScreenInfoState extends State<ExerciseScreenInfo> {
  bool isSelected = false;
  //List<bool> selectedIndex = [false, false, false, false];

  final ExerciseController _exerciseController = ExerciseController();

  ontapFunction(int currentIndex) {
    _exerciseController.setSelectQuestion(currentIndex);
    setState(() {
      if (widget.selectedIndex[currentIndex] == true) {
        widget.selectedIndex[currentIndex] = false;
        isSelected = false;
      } else {
        for (int i = 0; i < widget.selectedIndex.length; i++) {
          widget.selectedIndex[i] = false;
        }
        widget.selectedIndex[currentIndex] = true;
        isSelected = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const double vPadding = 30;
    double sizedBoxSpace = MediaQuery.of(context).size.height * 0.07;
    return Scaffold(
      backgroundColor:
          widget.isExercise ? Colors.white : MyThemes.infoLightBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: vPadding),
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
                          Spacer(),
                          Container(
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 192, 174, 10)),
                            child: Center(
                              child: Text(
                                'Revisão',
                                textAlign: TextAlign.end,
                                style: MyThemes.josefinSansBold(
                                    fontSize: 18, textColor: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),

              //CONTEÚDO DA PÁGINA
              widget.isExercise
                  ? BodyExerciseScreen(sizedBoxSpace, vPadding,
                      widget.exerciseType, widget.imgPath)
                  : Expanded(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: vPadding),
                          child: Text(
                            widget.title,
                            style: widget.title.length > 25
                                ? widget.title.length > 50
                                    ? MyThemes.josefinSansRegular(
                                        fontSize: 18, textColor: Colors.black)
                                    : MyThemes.josefinSansRegular(
                                        fontSize: 22, textColor: Colors.black)
                                : MyThemes.josefinSansBold(fontSize: 24),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.symmetric(horizontal: vPadding),
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
                                  width: MediaQuery.of(context).size.width *
                                      widget.imgScale,
                                ),
                              ),
                      ],
                    )),

              //BOTÃO CONTINUAR
              ExerciseColoredButton(
                buttonText: 'CONFIRMAR',
                onTapFunction: widget.onTap,
                isReady: widget.isExercise ? isSelected : true,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget BodyExerciseScreen(
      double sizedBoxSpace, double vPadding, String type, String imgPath) {
    switch (type) {
      case '4A':
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: sizedBoxSpace,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: vPadding, vertical: 10),
                child: Text(
                  widget.title,
                  style: MyThemes.josefinSansBold(fontSize: 24),
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
                width:
                    MediaQuery.of(context).size.width * 0.5 * widget.imgScale,
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
      default:
        return Container();
    }
  }
}