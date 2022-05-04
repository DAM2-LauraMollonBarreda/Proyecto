import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/appBar.dart';
import '../Widgets/textos.dart';

class ayuntamientoScreen extends StatefulWidget {
  const ayuntamientoScreen({Key? key}) : super(key: key);

  @override
  State<ayuntamientoScreen> createState() => _ayuntamientoScreenState();
}

class _ayuntamientoScreenState extends State<ayuntamientoScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    //titulo de la aplicacion
    String titulo = 'Ayuntamiento';
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      body: ListView(
        children: [
          //espaciodo
          Container(margin: EdgeInsets.all(15)),
          // widget de texto con formato y una alineacion concreta
          encabezados(titulo: "Horario"),
          //mostrar el horario
          Container(
            margin: EdgeInsets.fromLTRB(50, 10, 5, 0),
            child: const Text('DE LUNES A VIERNES     -  9:00 A 13:00'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 30, 0, 30),
            child: const Text('SABADOS Y DOMINGOS     -  CERRADO'),
          ),
          encabezados(titulo: 'Coorporacion municipal'),
          Container(
            margin: EdgeInsets.fromLTRB(50, 10, 5, 5),
            child: const Text(' Alba Lucea (PSOE) \n\n' +
                ' Noelia Monfort (PSOE)\n\n ' +
                ' Carlos Dolz (PSOE)\n\n ' +
                ' María Fortea (PAR)\n\n ' +
                ' Asunción Gargallo (PP)\n\n ' +
                ' Carolina Montells (PP)\n\n ' +
                ' Óscar Monforte (PP)\n\n '),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: RaisedButton(
                onPressed: () {
                  launch('https://mosqueruela.sedelectronica.es/');
                },
                child: const Text('SEDE ELECTRONICA')),
          ),
        ],
      ),
    );
  }
}
