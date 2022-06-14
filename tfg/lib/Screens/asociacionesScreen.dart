import 'package:flutter/material.dart';
import 'package:tfg/Widgets/widgets.dart';
import 'package:tfg/models/modelAsociaciones.dart';

class asociacionesScreen extends StatefulWidget {
  const asociacionesScreen({Key? key}) : super(key: key);

  @override
  State<asociacionesScreen> createState() => _asociacionesScreenState();
}

class _asociacionesScreenState extends State<asociacionesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //titulo de la aplicacion
  String titulo = 'Asociaciones';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      body: ListView.separated(
        itemBuilder: ((context, index) {
          return asociacionesButton(
            url: asociaciones.list_asociaciones[index].url,
            imagen: asociaciones.list_asociaciones[index].imagen,
            nombre: asociaciones.list_asociaciones[index].nombre,
          );
        }),
        itemCount: asociaciones.list_asociaciones.length,
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
