import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:stroke_text/stroke_text.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar(
      {super.key,
      required this.width,
      required this.userProgress,
      required this.total,
      required this.barColor});

  final double width;
  final int userProgress;
  final int total;
  final Color barColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 14,
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFE6E6E6),
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            height: 14,
            width: (userProgress / total) * width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: barColor,
            ),
          ),
        ),
        StrokeText(
          text: "${userProgress.toString()}/${total.toString()}",
          textStyle:
              MyThemes.josefinSansBold(fontSize: 12, textColor: Colors.white)
                  .copyWith(),
          strokeWidth: 1.5,
        ),
      ],
    );
  }
}
