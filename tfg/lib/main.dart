import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tfg/Screens/homeScreen.dart';
import 'package:tfg/Screens/mosqueruelaScreen.dart';
import 'package:tfg/Screens/serviciosScreen.dart';
import 'package:tfg/Screens/turismoScreen.dart';

import 'Screens/cazaScreen.dart';
import 'custom_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
      darkTheme: customDarkTheme(),
      theme: customLightTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
