//Metodo para cojer de firebase los datos de la 'tabla' que ver
// y relacionarla con la clase que le corresponde a que ver
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/modelTurismo.dart';

leer_queVer_turismo() {
  FirebaseFirestore.instance.collection('queVer').get().then((resultados) {
    resultados.docs.forEach((elementos) {
      queVer.list_queVer.add(queVer(
          name: elementos.data()['sitio'], imgUrl: elementos.data()['img']));
    });
  });
}

leer_rutasCortas_turismo() {
  FirebaseFirestore.instance.collection('rutasCortas').get().then((resultados) {
    resultados.docs.forEach((elementos) {
      rutasCortas.list_rutasCortas.add(rutasCortas(
          name: elementos.data()['sitio'], imgUrl: elementos.data()['img']));
    });
  });
}

leer_rutasLargas_turismo() {
  FirebaseFirestore.instance.collection('rutasLargas').get().then((resultados) {
    resultados.docs.forEach((elementos) {
      rutasLargas.list_rutasLargas.add(rutasLargas(
          name: elementos.data()['sitio'], imgUrl: elementos.data()['img']));
    });
  });
}
