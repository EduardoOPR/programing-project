import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/ProgressExerciseBar.dart';
import 'package:progaming/themes/MyThemes.dart';

class ExerciseAppBar extends StatelessWidget {
  const ExerciseAppBar({
    super.key,
    required this.progress,
    required this.total,
    required this.vidas,
  });

  final int progress;
  final int total;
  final int vidas;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProgressExerciseBar(
          progress: progress,
          total: total,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          vidas.toString(),
          //widget.user.vidas.toString(),
          style: MyThemes.josefinSansBold(
              fontSize: 22, textColor: const Color(0xFFFF7979)),
        ),
        Image.asset(
          'assets/images/Heart.png',
          width: 30,
        ),
      ],
    );
  }
}
