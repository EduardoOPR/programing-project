//import 'package:progaming/Views/screens/AchievementsScreen.dart';
import 'package:progaming/Views/screens/ExerciseScreen.dart';
import 'package:progaming/Views/screens/LoginScreen.dart';
import 'package:progaming/Views/screens/MainPageScreen.dart';

import 'package:flutter/material.dart';
import 'package:progaming/Views/screens/ResgisterScreen.dart';
import 'package:progaming/controller/TimerControler.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:progaming/Views/screens/SplashScreen.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (BuildContext context) => TimerInfo(), child: WebViewApp()),
    ),
  ));
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
        //'/': (context) => const ProgrammingBlocksView(),
        //'/': (context) => const LoginScreen(),
        '/': (context) => const SplashScreen(),
        '/login-screen': (context) => const LoginScreen(),
        '/register-screen': (context) => const RegisterScreen(),
        //'/programing-blocks': (context) => const ProgrammingBlocksView(),
      },
    );
  }
}
