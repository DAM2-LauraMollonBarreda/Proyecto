import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tfg/models/modelNoticas.dart';

leer_todasNoticias_noticias() {
  FirebaseFirestore.instance
      .collection('noticias')
      .orderBy('fecha', descending: true)
      .get()
      .then((resultados) {
    resultados.docs.forEach((elementos) {
      noticias.list_noticias.add(noticias(
          title: elementos.data()['titulo'],
          imgUrl: elementos.data()['img'],
          texto: elementos.data()['texto'],
          tipo: elementos.data()['tipo'],
          fecha: elementos.data()['fecha']));
    });
  });
}
