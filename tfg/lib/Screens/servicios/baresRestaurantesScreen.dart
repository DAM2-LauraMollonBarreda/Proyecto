import 'package:flutter/material.dart';
import 'package:tfg/Widgets/tarjetas.dart';
import 'package:tfg/models/modelServicios.dart';

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
      body: ListView.separated(
        itemBuilder: ((context, index) {
          if (servicios.list_servicios[index].sitio == 'bar' ||
              servicios.list_servicios[index].sitio == 'restaurante') {
            return contenedorServicios(
                imagen: servicios.list_servicios[index].imagen,
                titulo: servicios.list_servicios[index].nombre,
                telefono: servicios.list_servicios[index].telefono,
                calle: servicios.list_servicios[index].direccion,
                url: servicios.list_servicios[index].web);
          }
          return Text('hola');
        }),
        itemCount: servicios.list_servicios.length,
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
