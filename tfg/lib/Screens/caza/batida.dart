import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tfg/Screens/caza/controllerMapaBatida.dart';

import '../../Widgets/appBar.dart';

class BatidaScreen extends StatefulWidget {
  const BatidaScreen({Key? key}) : super(key: key);

  @override
  State<BatidaScreen> createState() => _BatidaScreenState();
}

class _BatidaScreenState extends State<BatidaScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //titulo de la aplicacion
  String titulo = 'Mapa batida';

  final _controller = controllerMapaBatida();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      body: GoogleMap(
        markers: _controller.markers,
        mapType: MapType.satellite,
        onMapCreated: _controller.onMapCreated,
        initialCameraPosition: _controller.initialCameraPosition,
        onTap: _controller.onTap,
      ),
    );
  }
}
