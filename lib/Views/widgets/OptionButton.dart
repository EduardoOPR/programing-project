import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

// ignore: must_be_immutable
class OptionButton extends StatefulWidget {
  OptionButton({
    super.key,
    required this.optionText,
    this.isSelected = false,
  });

  final String optionText;
  bool isSelected;

  @override
  State<OptionButton> createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.isSelected ? const Color(0xFFD0BBFF) : Colors.white,
          border: Border.all(
            width: 2,
            color: widget.isSelected
                ? const Color(0xFF9F75FF)
                : const Color(0xFFACACAC),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 172, 172, 172),
              blurRadius: 3,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            widget.optionText,
            style: MyThemes.josefinSansRegular(
                fontSize: 15, textColor: Colors.black),
          ),
        ),
      ),
    );
  }
}
