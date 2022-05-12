import 'package:equatable/equatable.dart';

class noticias extends Equatable {
  final String title;
  final String imgUrl;
  final String texto;
  final String tipo;

  const noticias({
    required this.title,
    required this.imgUrl,
    required this.texto,
    required this.tipo,
  });

  @override
  List<Object?> get props => [title, texto, imgUrl];

  static List<noticias> list_noticias = [];
}
