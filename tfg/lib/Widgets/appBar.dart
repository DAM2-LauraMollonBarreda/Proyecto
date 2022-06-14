import 'package:flutter/material.dart';
import 'package:tfg/Screens/asociacionesScreen.dart';
import 'package:tfg/Screens/ayuntamientoScreen.dart';
import 'package:tfg/Screens/homeScreen.dart';
import 'package:tfg/Screens/mosqueruelaScreen.dart';
import 'package:tfg/Screens/noticiasScreen.dart';
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
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(),
          child: Image(
            width: 250,
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Escudo_de_Mosqueruela.svg/1119px-Escudo_de_Mosqueruela.svg.png'),
          ),
        ),
        Padding(padding: EdgeInsets.all(15)),
        ListTile(
          title: Text('Mosqueruela',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => mosqueruelaScreen()));
          },
        ),
        ListTile(
          title: Text('Turismo',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => turismoScreen()));
          },
        ),
        ListTile(
          title: Text('Caza',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => cazaScreen()));
          },
        ),
        ListTile(
          title: Text('Servicios',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => serviciosScreen()));
          },
        ),
        ListTile(
          title: Text('Noticias y bandos',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => noticiasScreen()));
          },
        ),
        ListTile(
          title: Text('Asociaciones',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => asociacionesScreen()));
          },
        ),
        ListTile(
          title: Text('Ayuntamiento',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ayuntamientoScreen()));
          },
        ),
      ],
    ));
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
      backgroundColor: Colors.white,
      //Le pasamos un texto que sera pasado cuando se llame al widget
      title: Text(
        title,
        style: TextStyle(
            color: Color(0xfffa825a),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),

      centerTitle: true,

      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        color: Color(0xfffa825a),
      ),

      // Coloca el icono detrás para volver al inicio
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.home),
          color: Color(0xfffa825a),
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
