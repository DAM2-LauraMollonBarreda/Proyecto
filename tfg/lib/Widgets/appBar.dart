import 'package:flutter/material.dart';
import 'package:tfg/Screens/asociacionesScreen.dart';
import 'package:tfg/Screens/ayuntamientoScreen.dart';
import 'package:tfg/Screens/homeScreen.dart';
import 'package:tfg/Screens/mosqueruelaScreen.dart';
import 'package:tfg/Screens/serviciosScreen.dart';
import 'package:tfg/Screens/turismoScreen.dart';

import '../Screens/cazaScreen.dart';

//Widget del drawer
class drawerPersonalizado extends StatelessWidget {
  const drawerPersonalizado({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //devuelve un drawer
    return Drawer(
      //que contiene columnas
      child: Column(
        children: [
          //Contenedor en el que se guarda la imagen del escudo de mosqueruela
          Container(
            width: 250,
            height: 150,
            margin: EdgeInsets.all(55),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Escudo_de_Mosqueruela.svg/1119px-Escudo_de_Mosqueruela.svg.png'),
                  fit: BoxFit.scaleDown,
                )),
          ),
          //Botones que llevan a cada una de las pantallas
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => mosqueruelaScreen()));
            },
            child: Text("Mosqueruela"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => turismoScreen()));
            },
            child: Text("Turismo"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => serviciosScreen()));
            },
            child: Text("Servicios"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => cazaScreen()));
            },
            child: Text("Caza"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Noticias y bandos"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => asociacionesScreen()));
            },
            child: Text("Asociaciones"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ayuntamientoScreen()));
            },
            child: Text("Ayuntamiento"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Entrar como usuario"),
            minWidth: double.infinity,
            color: Colors.grey[100],
          ),
        ],
      ),
    );
  }
}

//Widget del appBar
class appbarPersonalizado extends StatelessWidget
    implements PreferredSizeWidget {
  const appbarPersonalizado({
    Key? key,
    required this.title,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  Size get preferredSize => const Size.fromHeight(50);

  final String title;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    //Creamos el app bar
    return AppBar(
      //Le pasamos un texto que sera pasado cuando se llame al widget
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),

      //el texto en el centro
      centerTitle: true,

      //color de fondo
      backgroundColor: Colors.white,
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(Icons.menu),
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
      ),

      // Coloca el icono detrás para volver al inicio
      actions: <Widget>[
        IconButton(
          color: Colors.black,
          icon: const Icon(Icons.home),
          onPressed: () {
            //volvemos al inicio
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => homeScreen()),
                (route) => false);
          },
        ),
      ],
    );
  }
}
