//Metodo para cojer de firebase los datos de las tablas de los servicios

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/modelServicios.dart';

leer_servicios() {
  FirebaseFirestore.instance.collection('servicios').get().then((resultados) {
    resultados.docs.forEach((elementos) {
      servicios.list_servicios.add(servicios(
          nombre: elementos.data()['nombre'],
          imagen: elementos.data()['imagen'],
          direccion: elementos.data()['direccion'],
          telefono: elementos.data()['tel'],
          web: elementos.data()['web'],
          sitio: elementos.data()['sitio']));
    });
  });
}
