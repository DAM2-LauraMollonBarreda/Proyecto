//Metodo para cojer de firebase los datos de las tablas de las asociaciones

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/modelAsociaciones.dart';

leer_asociaciones() {
  FirebaseFirestore.instance
      .collection('asociaciones')
      .get()
      .then((resultados) {
    resultados.docs.forEach((elementos) {
      asociaciones.list_asociaciones.add(asociaciones(
          nombre: elementos.data()['nombre'],
          imagen: elementos.data()['imagen'],
          url: elementos.data()['url']));
    });
  });
}
