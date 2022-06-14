import 'package:equatable/equatable.dart';

class asociaciones extends Equatable {
  final String nombre;
  final String imagen;
  final String url;

  const asociaciones({
    required this.nombre,
    required this.imagen,
    required this.url,
  });

  @override
  List<Object?> get props => [nombre, imagen, url];

  static List<asociaciones> list_asociaciones = [];
}
