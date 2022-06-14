//Metodo para cojer de firebase los datos de las tablas de la caza

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tfg/models/modelCazaJabali.dart';

import '../models/modelAsociaciones.dart';
import '../models/modelServicios.dart';

leer_caza() {
  FirebaseFirestore.instance.collection('cazaJabali').get().then((resultados) {
    resultados.docs.forEach((elementos) {
      cazaJabali.list_caza.add(cazaJabali(
          zona: elementos.data()['zona'],
          localizacion: elementos.data()['localizacion'],
          latitud: elementos.data()['latitud'],
          longitud: elementos.data()['longitud']));
    });
  });
}
