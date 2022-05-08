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
