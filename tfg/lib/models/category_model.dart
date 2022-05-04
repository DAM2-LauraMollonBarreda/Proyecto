import 'package:equatable/equatable.dart';
//CLASES QUE TIENEN LAS IMAGENES Y TITULOS DE LA PANTALLA TURISMO

class queVer extends Equatable {
  final String name;
  final String imgUrl;

  const queVer({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];

  static List<queVer> ver = [
    queVer(
        name: 'Iglesia de la asuncion',
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmSdIbCd4ZZbMHqqS5uBHNZ9QsE_U18M8mtg&usqp=CAU"),
    queVer(
        name: 'Portal de san roque',
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZZKIqe0VSS_4zFXl5sGylLHjfkMspGIkw0g&usqp=CAU"),
  ];
}

class rutasLargas extends Equatable {
  final String name;
  final String imgUrl;

  const rutasLargas({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];

  static List<rutasLargas> rutasl = [
    rutasLargas(
        name: 'El Lapiaz 1,9km (necesario coche)',
        imgUrl: "https://mosqueruela.es/wp-content/uploads/El-Lapiaz.jpg"),
    rutasLargas(
        name: 'Ruta la cañada 8,9km',
        imgUrl:
            "https://mosqueruela.es/wp-content/plugins/elementor/assets/images/placeholder.png"),
    rutasLargas(
        name: 'Pino los Lores 9,9km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Pinos-de-Los-Lores.jpg"),
    rutasLargas(
        name: 'Pino los Lores y Barranco Gibert 10,4km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Pinos-de-Los-Lores-y-Barranco-Gibert.jpg"),
    rutasLargas(
        name: 'El Carmen 11,4km',
        imgUrl: "https://mosqueruela.es/wp-content/uploads/El-Carmen.jpg"),
    rutasLargas(
        name: 'Puente de las Calzadas o Maravillas 12km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Puente-de-las-Calzadas-o-Maravillas.jpg"),
    rutasLargas(
        name: 'Ruta Tajo 12.4km',
        imgUrl: "https://mosqueruela.es/wp-content/uploads/Ruta-Tajo.jpg"),
    rutasLargas(
        name: 'Linares de Mora 14,5km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Linares-de-Mora.jpg"),
    rutasLargas(
        name: 'Puertomingalvo 14,5km',
        imgUrl: "https://mosqueruela.es/wp-content/uploads/Puertomingalvo.jpg"),
    rutasLargas(
        name: 'La Estrella 17km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/La-Estrella-PR-TE-83.jpg"),
    rutasLargas(
        name: 'La Estrella por el Pedaño 20km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/La-Estrella-por-El-Pedan%CC%83o-1.jpg"),
  ];
}

class rutasCortas extends Equatable {
  final String name;
  final String imgUrl;

  const rutasCortas({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];

  static List<rutasCortas> rutasc = [
    rutasCortas(
        name: 'Fuente y ermita de San Lamberto 0.5km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Fuente-y-ermita-de-San-Lamberto.jpg"),
    rutasCortas(
        name: 'Fuente el Gamelloncillo 1km',
        imgUrl:
            "https://mosqueruela.es/wp-content/plugins/elementor/assets/images/placeholder.png"),
    rutasCortas(
        name: 'Fuente el Maestro 1km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Fuente-el-maestro.jpg"),
    rutasCortas(
        name: 'Canto del Azafranar 2km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Canto-el-azafranar.jpg"),
    rutasCortas(
        name: 'Fuente y ermita de San Antonio 2km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Rutas-senderistas-cortas.jpg"),
    rutasCortas(
        name: 'Fuente de la Huerta y Charco por el Calvario 3km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Fuente-de-la-huerta-y-charco-por-el-calvario.jpg"),
    rutasCortas(
        name: 'Ruta del Bolage 1km',
        imgUrl:
            "https://mosqueruela.es/wp-content/plugins/elementor/assets/images/placeholder.png"),
    rutasCortas(
        name: 'Nacimiento de las Truchas 6.5km',
        imgUrl:
            "https://mosqueruela.es/wp-content/uploads/Nacimiento-de-las-truchas.jpg"),
    rutasCortas(
        name: 'Fuente de San Pedro 1km',
        imgUrl:
            "https://mosqueruela.es/wp-content/plugins/elementor/assets/images/placeholder.png"),
  ];
}
