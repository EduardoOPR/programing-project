import 'package:flutter/material.dart';
import 'package:progaming/themes/MyThemes.dart';

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField(
      {super.key,
      required this.emailController,
      required this.isObscure,
      required this.hintText,
      required this.inputType,
      required this.validator});

  final TextEditingController emailController;
  final bool isObscure;
  final String hintText;
  final TextInputType inputType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: inputType,
      textAlignVertical: TextAlignVertical.center,
      controller: emailController,
      obscureText: isObscure,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 15, bottom: 17, top: 17),
        isDense: true,
        hintText: hintText,
        hintStyle: MyThemes.josefinSansLight(fontSize: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 73, 73, 73), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: MyThemes.deepPurple, width: 1.5),
        ),
      ),
    );
  }
}
