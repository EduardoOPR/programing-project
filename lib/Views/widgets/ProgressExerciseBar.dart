import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

class ProgressExerciseBar extends StatelessWidget {
  const ProgressExerciseBar({
    super.key,
    required this.progress,
    required this.total,
  });

  final int progress;
  final int total;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.66;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 30,
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            color: Color(0xFFE6E6E6),
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            height: 30,
            width: (progress / total) * width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(23)),
              color: MyThemes.lightBlue,
            ),
          ),
        ),
      ],
    );
  }
}
