import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/ProgressBar.dart';
import 'package:progaming/themes/MyThemes.dart';

class ContainerHomePage extends StatelessWidget {
  const ContainerHomePage({
    super.key,
    required this.containerWidth,
    required this.isLeft,
    required this.imgPath,
    required this.title,
    required this.boxColor,
    required this.userprogress,
    required this.imgSize,
    required this.onTap,
    required this.listLength,
  });

  final double containerWidth;
  final int userprogress;
  final bool isLeft;
  final String imgPath;
  final String title;
  final Color boxColor;
  final double imgSize;
  final Function()? onTap;
  final int listLength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 39),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment:
                    isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                      color: boxColor,
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: MyThemes.josefinSansBold(
                          fontSize: 20, textColor: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ProgressBar(
                      width: containerWidth,
                      userProgress: userprogress,
                      total: listLength,
                      barColor: boxColor),
                ],
              ),
            ),
            isLeft
                ? Positioned(
                    right: MediaQuery.of(context).size.width * 0.17,
                    bottom: 24,
                    child: Image.asset(
                      imgPath,
                      width: imgSize,
                    ),
                  )
                : Positioned(
                    left: MediaQuery.of(context).size.width * 0.17,
                    bottom: 35,
                    child: Image.asset(
                      imgPath,
                      width: imgSize,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
