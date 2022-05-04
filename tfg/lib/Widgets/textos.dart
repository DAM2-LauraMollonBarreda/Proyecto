import 'package:flutter/material.dart';

class filaInfo extends StatelessWidget {
  IconData icono;
  String titulo = "";
  String texto = "";

  filaInfo({
    Key? key,
    required this.icono,
    required this.titulo,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icono),
        Text("    " + titulo + "     "),
        Text(texto),
      ],
    );
  }
}

class encabezados extends StatelessWidget {
  String titulo;

  encabezados({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(15),
        ),
        Text(
          titulo,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }
}
