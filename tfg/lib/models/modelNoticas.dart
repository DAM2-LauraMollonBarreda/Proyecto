import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class noticias extends Equatable {
  final String title;
  final String imgUrl;
  final String texto;
  final String tipo;
  final Timestamp fecha;

  const noticias({
    required this.title,
    required this.imgUrl,
    required this.texto,
    required this.tipo,
    required this.fecha,
  });

  @override
  List<Object?> get props => [title, texto, imgUrl, tipo, fecha];

  static List<noticias> list_noticias = [];
}
