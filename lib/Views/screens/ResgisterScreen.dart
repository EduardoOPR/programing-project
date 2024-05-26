import 'package:flutter/material.dart';
import 'package:progaming/controller/FirebaseController.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:progaming/Views/widgets/LoginTextFormField.dart';
import 'package:email_validator/email_validator.dart';
import 'package:progaming/Views/widgets/LoginColoredButton.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final yourNameController = TextEditingController();
  final double spaceHeight = 0.12;

  final FirebaseController _firebaseController = FirebaseController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33.0, vertical: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Cadastro',
                style: MyThemes.josefinSansBold(
                    fontSize: 24, textColor: MyThemes.deepPurple),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * spaceHeight,
              ),
              Image.asset(
                'assets/images/login.png',
                height: MediaQuery.of(context).size.height * 0.24,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoginTextFormField(
                      emailController: yourNameController,
                      isObscure: false,
                      hintText: 'Seu Nome',
                      inputType: TextInputType.emailAddress,
                      validator: (_) {
                        return null;
                      },
                    ),
                    LoginTextFormField(
                      emailController: emailController,
                      isObscure: false,
                      hintText: 'Email',
                      inputType: TextInputType.emailAddress,
                      validator: (email) {
                        if (email != null && !EmailValidator.validate(email)) {
                          return 'Insira um email válido';
                        } else {
                          return null;
                        }
                      },
                    ),
                    LoginTextFormField(
                      emailController: passwordController,
                      isObscure: true,
                      hintText: 'Senha',
                      inputType: TextInputType.text,
                      validator: (_) {
                        return null;
                      },
                    ),
                    LoginColoredButton(
                      buttonText: 'Concluir',
                      onTapFunction: () async {
                        final result =
                            await _firebaseController.cadastrarUsuario(
                                nome: yourNameController.text,
                                email: emailController.text,
                                senha: passwordController.text,
                                context: context);

                        if (result == true) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * spaceHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
