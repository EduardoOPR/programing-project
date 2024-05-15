import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/ExerciseColoredButton.dart';
import 'package:progaming/Views/widgets/ResultContainer.dart';
import 'package:progaming/themes/MyThemes.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.moedas,
    required this.pAcerto,
    required this.ontap,
  });

  final double pAcerto;
  final int moedas;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Image.asset('assets/images/Fireworks.png'),
            const SizedBox(
              height: 20,
            ),
            Text(
              pAcerto == 100
                  ? 'Perfeito!'
                  : pAcerto > 50
                      ? 'Muito bem!'
                      : "Boa!",
              style: MyThemes.josefinSansBold(
                  fontSize: 36, textColor: MyThemes.lightBlue),
            ),
            Text(
              pAcerto == 100
                  ? 'Você acertou todas as perguntas, parabéns!'
                  : pAcerto > 50
                      ? 'Você acertou a maioria das perguntas, parabéns!'
                      : "Parabéns, você conseguiu responder todas as questões!",
              style: MyThemes.josefinSansRegular(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 1,
                  ),
                  ResultContainer(
                    resultTypeText: 'MOEDAS',
                    result: moedas,
                    containerColor: Color.fromARGB(255, 212, 181, 57),
                    isPercentage: false,
                  ),
                  ResultContainer(
                    resultTypeText: 'ACERTOS',
                    result: pAcerto.toInt(),
                    containerColor: Color(0xFF71B23E),
                    isPercentage: true,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ExerciseColoredButton(
              buttonText: 'CONTINUAR',
              onTapFunction: ontap,
              isReady: true,
            )
          ],
        ),
      ),
    );
  }
}
