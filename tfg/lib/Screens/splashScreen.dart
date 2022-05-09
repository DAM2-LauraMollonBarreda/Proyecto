import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tfg/Screens/homeScreen.dart';

import '../bd/turismo.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    leer_queVer_turismo();
    leer_rutasCortas_turismo();
    leer_rutasLargas_turismo();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => homeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Container(
            padding: EdgeInsets.all(50),
            child: Image.asset('assets/logo.png'),
          ),
          Padding(padding: EdgeInsets.all(0)),
          Container(
            padding: EdgeInsets.all(40),
            child: Image.asset('assets/Loader.gif'),
          ),
          Padding(padding: EdgeInsets.all(0)),
          Container(
            padding: EdgeInsets.only(left: 200),
            child: Image.asset('assets/miLogo.jpg'),
          ),
        ],
      ),
    );
  }
}
