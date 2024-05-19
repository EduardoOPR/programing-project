import 'package:flutter/material.dart';

class HomePageLevelButton extends StatelessWidget {
  const HomePageLevelButton({
    super.key,
    required this.imageSize,
    required this.ontap,
    required this.progress,
    required this.level,
    required this.listID,
  });

  final double imageSize;
  final Function() ontap;
  final int progress;
  final int level;
  final int listID;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: imageSize,
        ),
        InkWell(
          onTap: ontap,
          child: Container(
            width: 65,
            height: 55,
            decoration: BoxDecoration(
              color: listID == 0
                  ? const Color(0xFFF72585)
                  : listID == 1
                      ? const Color(0xFFB5179E)
                      : const Color(0xFF851FC8),
              boxShadow: [
                BoxShadow(
                  color: listID == 0
                      ? const Color(0xFFA90D54)
                      : listID == 1
                          ? const Color.fromARGB(255, 107, 7, 92)
                          : const Color.fromARGB(255, 62, 10, 97),
                  blurRadius: 0,
                  offset: Offset(0, 8), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              progress > level
                  ? Icons.check_outlined
                  : Icons.auto_stories_outlined,
              size: 40,
              color: listID == 0
                  ? const Color.fromARGB(255, 255, 163, 235)
                  : listID == 1
                      ? Color.fromARGB(255, 238, 156, 226)
                      : Color.fromARGB(255, 203, 125, 255),
            ),
          ),
        ),
      ],
    );
  }
}
