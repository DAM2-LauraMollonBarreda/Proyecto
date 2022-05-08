import 'package:equatable/equatable.dart';

class queVer extends Equatable {
  final String name;
  final String imgUrl;

  const queVer({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];

  static List<queVer> list_queVer = [];
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

  static List<rutasLargas> list_rutasLargas = [];
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

  static List<rutasCortas> list_rutasCortas = [];
}
