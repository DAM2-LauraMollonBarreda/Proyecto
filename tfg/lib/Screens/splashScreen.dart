import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tfg/Screens/homeScreen.dart';
import 'package:tfg/bd/noticias.dart';
import 'package:tfg/bd/servicios.dart';

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
    leer_todasNoticias_noticias();
    leer_servicios();

    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => homeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            padding: EdgeInsets.all(150),
            child: Image.asset('assets/CargandoSplash.gif'),
          ),
          Container(
            padding: EdgeInsets.only(left: 200),
            child: Image.asset('assets/miLogo.jpg'),
          ),
        ],
      ),
    );
  }
}
