import 'package:equatable/equatable.dart';

class servicios extends Equatable {
  final String nombre;
  final String imagen;
  final String direccion;
  final String telefono;
  final String web;
  final String sitio;

  const servicios({
    required this.nombre,
    required this.imagen,
    required this.direccion,
    required this.telefono,
    required this.web,
    required this.sitio,
  });

  @override
  List<Object?> get props => [nombre, imagen, direccion, telefono, web, sitio];

  static List<servicios> list_servicios = [];
}
