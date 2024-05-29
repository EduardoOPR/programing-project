import 'package:flutter/material.dart';
import 'package:progaming/Views/widgets/ShopContainer.dart';
import 'package:progaming/controller/FirebaseService.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key, required this.user});

  final UserModel user;

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final FirebaseService _firebaseService = FirebaseService();

  SnackBar buySnackBar({
    required bool isBought,
  }) {
    return SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.fixed,
        backgroundColor: isBought ? MyThemes.Green : MyThemes.red,
        content: Container(
          //height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          color: isBought ? MyThemes.Green : MyThemes.red,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    isBought
                        ? 'Comprado com Sucesso!'
                        : 'Não foi possível realizar a compra!',
                    style: MyThemes.josefinSansBold(
                        fontSize: 22, textColor: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      isBought
                          ? 'O item foi comprado com Sucesso, agora ele está no seu inventário'
                          : 'Ou suas moedas são insuficientes ou você já possui esse item',
                      style: MyThemes.josefinSansRegular(
                          fontSize: 16, textColor: Colors.white),
                      textAlign: TextAlign.left),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ));
  }

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
              color: Color(0xFFCABFF6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShopContainer(
                  iconPath: 'assets/images/HeartOutlined.png',
                  title: 'Recupere seus corações',
                  containerText:
                      'Está sem corações para continuar praticando? recupere seus corações e continue a aventura!',
                  value: 500,
                  ontap: () async {
                    if (widget.user.moedaTotal >= 500) {
                      widget.user.vidas = 5;
                      widget.user.moedaAtual -= 500;
                      await _firebaseService.updateUserData(data: widget.user);
                      setState(() {});
                      final snackBar = buySnackBar(isBought: true);
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    } else {
                      final snackBar = buySnackBar(isBought: false);
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                  },
                ),
                ShopContainer(
                  iconPath: 'assets/images/Star.png',
                  title: 'O dobro ou nada',
                  containerText:
                      'Conclua o próximo exercicio sem errar e ganhe o dobro do prêmio',
                  value: 70,
                  ontap: () async {
                    if (widget.user.moedaTotal >= 70 &&
                        widget.user.hasBuff == false) {
                      widget.user.hasBuff = true;
                      widget.user.moedaAtual -= 70;
                      await _firebaseService.updateUserData(data: widget.user);
                      setState(() {});
                      final snackBar = buySnackBar(isBought: true);
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    } else {
                      final snackBar = buySnackBar(isBought: false);
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                  },
                ),
                ShopContainer(
                  iconPath: 'assets/images/Shield.png',
                  title: 'Proteja sua sequência',
                  containerText:
                      'Garanta que sua sequência não será perdida mesmo se perder 1 dia de exercício',
                  value: 700,
                  ontap: () async {
                    if (widget.user.moedaTotal >= 700 &&
                        widget.user.hasShield == false) {
                      final snackBar = buySnackBar(isBought: true);

                      widget.user.hasShield = true;
                      widget.user.moedaAtual -= 700;
                      await _firebaseService.updateUserData(data: widget.user);
                      setState(() {});

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    } else {
                      final snackBar = buySnackBar(isBought: false);
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                  },
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
