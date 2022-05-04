// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../Widgets/appBar.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String title = 'Inicio';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        //widget creado en el que pasamos el titulo y el estado del Scaffold
        appBar: appbarPersonalizado(title: title, scaffoldKey: _scaffoldKey),
        //widget creado en el que abrimos el menu de la izquierda
        drawer: drawerPersonalizado(),
      ),
    );
  }
}
