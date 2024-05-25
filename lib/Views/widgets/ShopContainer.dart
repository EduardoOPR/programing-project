import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

class ShopContainer extends StatelessWidget {
  const ShopContainer({
    super.key,
    required this.iconPath,
    required this.title,
    required this.containerText,
    required this.value,
    required this.ontap,
  });

  final String iconPath;
  final String title;
  final String containerText;
  final int value;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.84,
        height: MediaQuery.of(context).size.height * 0.168,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 3, color: const Color(0xFF989898)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    iconPath,
                    width: 48,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        value.toString(),
                        style: MyThemes.josefinSansBold(
                            fontSize: 16, textColor: Color(0xFFCED13C)),
                      ),
                      Image.asset(
                        'assets/images/Coin.png',
                        width: 17,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: MyThemes.josefinSansBold(
                        fontSize: 20, textColor: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    containerText,
                    style: MyThemes.josefinSansRegular(
                        fontSize: 14, textColor: Colors.black),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
