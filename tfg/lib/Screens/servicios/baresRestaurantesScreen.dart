import 'package:flutter/material.dart';
import 'package:tfg/Widgets/tarjetas.dart';

import '../../Widgets/appBar.dart';

class baresRestaurantesScreen extends StatelessWidget {
  const baresRestaurantesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    //titulo de la aplicacion
    String titulo = 'Bares y restaurantes';
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      body: ListView(
        children: [
          contenedorServicios(
            url: 'https://www.hotelmontenieve.net/',
            titulo: 'Hotel Motenieve',
            telefono: '978805123',
            calle: 'Carretera Venta del Aire, 44410',
            imagen:
                'https://z.cdrst.com/foto/hotel-sf/1598a/granderesp/hotel-montenieve-general-ba19376.jpg',
          )
        ],
      ),
    );
  }
}
