import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/ShopContainer.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key, required this.user});

  final UserModel user;

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              widget.user.moedaAtual.toString(),
              style: MyThemes.josefinSansBold(
                  fontSize: 22, textColor: Colors.white),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/Coin.png',
              width: 23,
            ),
            const SizedBox(
              width: 15,
            )
          ]),
        ],
        title: Text(
          'Loja',
          style:
              MyThemes.josefinSansBold(fontSize: 24, textColor: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: MyThemes.lightPurple,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/ShopRobot.png',
            width: MediaQuery.of(context).size.width * 0.73,
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFF7764A4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShopContainer(
                  iconPath: 'assets/images/HeartOutlined.png',
                  title: 'Recupere seus corações',
                  containerText:
                      'Está sem corações para continuar praticando? recupere seus corações e continue a aventura!',
                  value: 1000,
                ),
                ShopContainer(
                  iconPath: 'assets/images/Star.png',
                  title: 'O dobro ou nada',
                  containerText:
                      'Conclua o próximo exercicio sem errar e ganhe o dobro do prêmio',
                  value: 500,
                ),
                ShopContainer(
                  iconPath: 'assets/images/Shield.png',
                  title: 'Proteja sua sequência',
                  containerText:
                      'Garanta que sua sequência não será perdida mesmo se perder 1 dia de exercício',
                  value: 3000,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
