import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

class LoginColoredButton extends StatelessWidget {
  const LoginColoredButton(
      {super.key, required this.buttonText, required this.onTapFunction});

  final String buttonText;
  final Function()? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: MyThemes.deepPurple,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            buttonText,
            style:
                MyThemes.josefinSansBold(fontSize: 20, textColor: Colors.white),
          ),
        ),
      ),
    );
  }
}
