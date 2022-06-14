import 'package:equatable/equatable.dart';

class cazaJabali extends Equatable {
  final String zona;
  final String localizacion;
  final double longitud;
  final double latitud;

  const cazaJabali({
    required this.zona,
    required this.localizacion,
    required this.longitud,
    required this.latitud,
  });

  @override
  List<Object?> get props => [zona, localizacion, longitud];

  static List<cazaJabali> list_caza = [];
}
