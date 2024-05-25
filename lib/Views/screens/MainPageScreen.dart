import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progaming/Views/screens/AchievementsScreen.dart';
import 'package:progaming/Views/screens/HomeScreen.dart';
import 'package:progaming/Views/screens/ShopScreen.dart';
import 'package:progaming/Views/screens/statisticsScreen.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({super.key});

//quando um exercicio for concluído ou um item comprado, atualizar os dados do usuário aqui

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final userdata = ModalRoute.of(context)?.settings.arguments as UserModel;
    final UserModel user = userdata;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 32,
          backgroundColor: MyThemes.lightPurple,
          type: BottomNavigationBarType.fixed,
          fixedColor: MyThemes.lightBlue,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'a'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: 'd'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.trophy,
                  size: 26,
                ),
                label: 'b'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'c'),
          ],
        ),
        body: getBody(_currentIndex, user));
  }
}

Widget getBody(int index, UserModel user) {
  switch (index) {
    case 0:
      return HomeScreen(
        user: user,
      );
    case 1:
      return ShopScreen(
        user: user,
      );
    case 2:
      return AchievementsScreen(
        user: user,
      );
    case 3:
      return StatisticsScreen(
        user: user,
      );
    default:
      return Placeholder();
  }
}
