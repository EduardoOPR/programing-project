import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:stroke_text/stroke_text.dart';

class AchievementContainer extends StatelessWidget {
  AchievementContainer(
      {super.key,
      required this.quantity,
      required this.achievementTitle,
      required this.imagePath,
      required this.containerColor,
      required this.imagePathMedal,
      required this.isComplete,
      this.userQuantity = 0,
      required this.subtext});

  final int quantity;
  final String achievementTitle;
  final String imagePath;
  final String imagePathMedal;
  final String subtext;
  final Color containerColor;
  final bool isComplete;
  int userQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: containerColor, width: 5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imagePath,
              width: 65,
            ),
            isComplete
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        achievementTitle,
                        style: MyThemes.josefinSansBold(
                            fontSize: 24, textColor: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${quantity.toString()} $subtext",
                        style: MyThemes.josefinSansRegular(
                            fontSize: 14, textColor: Colors.black),
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        achievementTitle,
                        style: MyThemes.josefinSansBold(
                            fontSize: 24, textColor: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${quantity.toString()} $subtext",
                        style: MyThemes.josefinSansRegular(
                            fontSize: 14, textColor: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 14,
                            width: MediaQuery.of(context).size.height * 0.18,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFE6E6E6),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: Container(
                              height: 14,
                              width: (userQuantity / quantity) *
                                  MediaQuery.of(context).size.height *
                                  0.18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: MyThemes.lightBlue,
                              ),
                            ),
                          ),
                          StrokeText(
                            text:
                                "${userQuantity.toString()}/${quantity.toString()}",
                            textStyle: MyThemes.josefinSansBold(
                                    fontSize: 12, textColor: Colors.white)
                                .copyWith(),
                            strokeWidth: 1.5,
                          ),
                        ],
                      )
                    ],
                  ),
            Image.asset(
              imagePathMedal,
              width: 60,
            ),
          ],
        ),
      ),
    );
  }
}
