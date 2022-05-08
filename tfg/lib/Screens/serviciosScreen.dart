import 'package:flutter/material.dart';
import 'package:tfg/Screens/servicios/alojamientoSreen.dart';
import 'package:tfg/Screens/servicios/baresRestaurantesScreen.dart';
import 'package:tfg/Screens/servicios/otrosScreen.dart';
import 'package:tfg/Screens/servicios/tiendasScreen.dart';
import 'package:tfg/Widgets/tarjetas.dart';

import '../Widgets/appBar.dart';
import 'mosqueruelaScreen.dart';

class serviciosScreen extends StatefulWidget {
  const serviciosScreen({Key? key}) : super(key: key);

  @override
  State<serviciosScreen> createState() => _serviciosScreenState();
}

class _serviciosScreenState extends State<serviciosScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  //titulo de la aplicacion
  String titulo = 'Servicios';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        //widget creado en el que pasamos el titulo y el estado del Scaffold
        appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
        //widget creado en el que abrimos el menu de la izquierda
        drawer: drawerPersonalizado(),
        //en esta pantalla tenemos la categoria de los servicios ofrecidos en el pueblo
        body: Padding(
            padding: EdgeInsets.all(15.0),
            child: ListView(
              children: [
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => baresRestaurantesScreen())),
                    child: const Card(
                      elevation: 9,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: ListTile(
                        dense: false,
                        leading: Icon(
                          Icons.restaurant,
                          color: Colors.cyan,
                          size: 30,
                        ),
                        title: Text(
                          "Bares y restaurantes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xfffa825a)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => alojaminetoScreen())),
                    child: const Card(
                      elevation: 9,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: ListTile(
                        dense: false,
                        leading: Icon(
                          Icons.bed,
                          color: Colors.cyan,
                          size: 30,
                        ),
                        title: Text(
                          "Alojamiento",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xfffa825a)),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    )),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => tiendasScreen())),
                    child: const Card(
                      elevation: 9,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: ListTile(
                        dense: false,
                        leading: Icon(
                          Icons.shopping_cart,
                          color: Colors.cyan,
                          size: 30,
                        ),
                        title: Text(
                          "Tiendas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xfffa825a)),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    )),
                GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => otrosScreen())),
                    child: const Card(
                      elevation: 9,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: ListTile(
                        dense: false,
                        leading: Icon(
                          Icons.other_houses,
                          color: Colors.cyan,
                          size: 30,
                        ),
                        title: Text(
                          "Otros",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xfffa825a)),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    )),
              ],
            )));
  }
}
