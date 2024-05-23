import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

class ExerciseColoredButton extends StatelessWidget {
  ExerciseColoredButton({
    super.key,
    required this.buttonText,
    required this.onTapFunction,
    required this.isReady,
    this.isRight = true,
    this.isSnack = false,
    this.dontHasBlur = true,
  });

  final String buttonText;
  final Function()? onTapFunction;
  final bool isReady;
  bool isRight;
  bool isSnack;
  bool dontHasBlur;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSnack
          ? const EdgeInsets.all(0)
          : const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: isReady ? onTapFunction : () {},
        child: Container(
          width: double.infinity,
          height: 44,
          decoration: BoxDecoration(
            color: isReady
                ? isSnack
                    ? isRight
                        ? MyThemes.Green
                        : MyThemes.red
                    : MyThemes.lightBlue
                : const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 172, 172, 172),
                blurRadius: dontHasBlur ? 0 : 3,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              buttonText,
              style: MyThemes.josefinSansBold(
                      fontSize: 20,
                      textColor:
                          isReady ? Colors.white : const Color(0xFF505050))
                  .copyWith(letterSpacing: -1.0),
            ),
          ),
        ),
      ),
    );
  }
}
