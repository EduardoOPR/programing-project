import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

class StatisticsContainer extends StatelessWidget {
  const StatisticsContainer({
    super.key,
    required this.quantity,
    required this.text,
    required this.imagePath,
  });

  final int quantity;
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MyThemes.pink, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quantity.toString(),
                  style: MyThemes.josefinSansBold(
                      fontSize: 24, textColor: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: MyThemes.josefinSansRegular(
                      fontSize: 22, textColor: Colors.black),
                )
              ],
            ),
            Image.asset(
              imagePath,
              width: 60,
            ),
          ],
        ),
      ),
    );
  }
}
