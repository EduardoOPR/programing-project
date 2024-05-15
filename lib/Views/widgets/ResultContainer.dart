import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({
    super.key,
    required this.resultTypeText,
    required this.result,
    required this.containerColor,
    required this.isPercentage,
  });

  final String resultTypeText;
  final int result;
  final Color containerColor;
  final bool isPercentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: 110,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: containerColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              resultTypeText,
              textAlign: TextAlign.center,
              style: MyThemes.josefinSansBold(
                  fontSize: 16, textColor: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: -40,
          child: Container(
            height: 104,
            width: 104,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(width: 4, color: containerColor)),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  isPercentage
                      ? 'assets/images/target.png'
                      : 'assets/images/Coin.png',
                  width: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  isPercentage
                      ? '${result.toString()}%'
                      : '${result.toString()}',
                  style: MyThemes.josefinSansBold(
                      fontSize: 20, textColor: containerColor),
                ),
              ],
            )),
          ),
        )
      ],
    );
  }
}
