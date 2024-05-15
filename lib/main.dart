//import 'package:progaming/Views/screens/AchievementsScreen.dart';
import 'package:progaming/Views/screens/ExerciseScreen.dart';
import 'package:progaming/Views/screens/LoginScreen.dart';
import 'package:progaming/Views/screens/MainPageScreen.dart';
import 'package:progaming/Views/screens/ProgrammingBlocksView.dart';

import 'package:flutter/material.dart';
import 'package:progaming/Views/screens/ResgisterScreen.dart';
//import 'package:progaming/Views/screens/statisticsScreen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:progaming/Views/screens/SplashScreen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProGaming',
      debugShowCheckedModeBanner: false,
      routes: {
        '/main-page-screen': (context) => const MainPageScreen(),
        '/exercise-screen': (context) => const ExerciseScreen(),
        '/': (context) => const ProgrammingBlocksView(),
        //'/': (context) => const StatisticsScreen(),
        //'/': (context) => const SplashScreen(),
        '/login-screen': (context) => const LoginScreen(),
        '/register-screen': (context) => const RegisterScreen(),
        '/programing-blocks': (context) => const ProgrammingBlocksView(),
      },
    );
  }
}
