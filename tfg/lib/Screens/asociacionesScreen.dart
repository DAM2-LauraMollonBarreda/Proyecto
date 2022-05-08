import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tfg/Widgets/widgets.dart';
import 'package:tfg/models/modelTurismo.dart';

import '../Widgets/appBar.dart';

class asociacionesScreen extends StatefulWidget {
  const asociacionesScreen({Key? key}) : super(key: key);

  @override
  State<asociacionesScreen> createState() => _asociacionesScreenState();
}

class _asociacionesScreenState extends State<asociacionesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
      body: FlatButton(onPressed: () {}, child: Text('Probar')),
    );
  }
}

final _fireStore = FirebaseFirestore.instance;
Future<void> getData() async {
  // Get docs from collection reference
  QuerySnapshot querySnapshot = await _fireStore.collection('queVer').get();

  // Get data from docs and convert map to List
  final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
  //for a specific field
  //final allData = querySnapshot.docs.map((doc) => doc.get('fieldName')).toList();

  print(allData);
}
