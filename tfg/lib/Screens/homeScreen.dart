// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tfg/Screens/mosqueruelaScreen.dart';
import 'package:tfg/Screens/noticiasScreen.dart';
import 'package:tfg/Screens/servicios/alojamientoSreen.dart';
import 'package:tfg/Screens/servicios/baresRestaurantesScreen.dart';
import 'package:tfg/Screens/turismoScreen.dart';
import 'package:url_launcher/url_launcher.dart';

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
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mosqueruelaScreen()));
                  },
                  splashColor: Color(0xff2E282A),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.location_city,
                          size: 70.0,
                          color: Colors.cyan,
                        ),
                        Text('El pueblo',
                            style: TextStyle(
                                color: Color(0xfffa825a),
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => turismoScreen()));
                  },
                  splashColor: Color(0xff2E282A),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.travel_explore_rounded,
                          size: 70.0,
                          color: Colors.cyan,
                        ),
                        Text('Turismo',
                            style: TextStyle(
                                color: Color(0xfffa825a),
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => baresRestaurantesScreen()));
                  },
                  splashColor: Color(0xff2E282A),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.restaurant,
                          size: 70.0,
                          color: Colors.cyan,
                        ),
                        Text('Resturantes',
                            style: TextStyle(
                                color: Color(0xfffa825a),
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => alojaminetoScreen()));
                  },
                  splashColor: Color(0xff2E282A),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.bed,
                          size: 70.0,
                          color: Colors.cyan,
                        ),
                        Text('Alojamientos',
                            style: TextStyle(
                                color: Color(0xfffa825a),
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => noticiasScreen()));
                  },
                  splashColor: Color(0xff2E282A),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.newspaper,
                          size: 70.0,
                          color: Colors.cyan,
                        ),
                        Text('Ultimas noticias',
                            style: TextStyle(
                                color: Color(0xfffa825a),
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    launch('tel://627 70 93 60');
                  },
                  splashColor: Color(0xff2E282A),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.call,
                          size: 70.0,
                          color: Colors.cyan,
                        ),
                        Text('Llama a la oficina\n       de turismo',
                            style: TextStyle(
                                color: Color(0xfffa825a),
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
