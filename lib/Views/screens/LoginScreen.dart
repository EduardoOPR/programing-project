import 'package:flutter/material.dart';
import 'package:progaming/controller/FirebaseController.dart';
import 'package:progaming/themes/MyThemes.dart';
import 'package:progaming/Views/widgets/LoginTextFormField.dart';
import 'package:email_validator/email_validator.dart';
import 'package:progaming/Views/widgets/LoginColoredButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final double spaceHeight = 0.12;

  FirebaseController _firebaseController = FirebaseController();

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
                'Login',
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
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                      buttonText: 'Entrar',
                      onTapFunction: () {
                        _firebaseController.loginUsuario(
                            email: emailController.text,
                            senha: passwordController.text,
                            context: context);
                      },
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Esqueceu a Senha?',
                        textAlign: TextAlign.center,
                        style: MyThemes.josefinSansRegular(
                                fontSize: 16,
                                textColor: const Color(0xFF348BAA))
                            .copyWith(
                          decorationColor: const Color(0xFF348BAA),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * spaceHeight,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register-screen');
                },
                child: Text(
                  'Criar Conta',
                  style: MyThemes.josefinSansBold(
                      fontSize: 24, textColor: MyThemes.deepPurple),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
