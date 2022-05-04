import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../Widgets/appBar.dart';

class asociacionesScreen extends StatefulWidget {
  const asociacionesScreen({Key? key}) : super(key: key);

  @override
  State<asociacionesScreen> createState() => _asociacionesScreenState();
}

class _asociacionesScreenState extends State<asociacionesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final databaseReference = FirebaseDatabase(
          databaseURL:
              "https://appmosqueruela-44410-default-rtdb.europe-west1.firebasedatabase.app/")
      .reference();
  //titulo de la aplicacion
  String titulo = 'Prueba';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      body: ListView(
        children: [
          FlatButton(
              onPressed: () {
                createRecord();
              },
              child: Text('Boton bd'))
        ],
      ),
    );
  }

  void createRecord() {
    databaseReference.child("caminos").set({
      'title': 'Mastering EJB',
      'description': 'Programming Guide for J2EE'
    });
    databaseReference.child("2").set({
      'title': 'Flutter in Action',
      'description': 'Complete Programming Guide to learn Flutter'
    });
  }
}
