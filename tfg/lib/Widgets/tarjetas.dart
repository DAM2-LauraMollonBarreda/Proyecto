import 'dart:ui';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:tfg/Widgets/botones.dart';
import 'package:tfg/models/modelTurismo.dart';

class tarjetaExpandible extends StatelessWidget {
  String url = "";
  String titulo = "";
  String texto = "";

  tarjetaExpandible({
    Key? key,
    required this.url,
    required this.titulo,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: FadeInImage(
                  image: NetworkImage(url),
                  placeholder: const AssetImage('assets/loading.gif'),
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 3000),
                ),
              ),
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                      tapBodyToCollapse: true, tapBodyToExpand: true),
                  header: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(titulo,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfffa825a))),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (var _ in Iterable.generate(1))
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(texto,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                        ),
                    ],
                  ),
                  collapsed: Text(
                    texto,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    //style: const TextStyle(color: Colors.black)
                  ),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        //theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardDeslizableVer extends StatelessWidget {
  final queVer category;
  const cardDeslizableVer({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 30),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imgUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(236, 0, 0, 0),
                          Color.fromARGB(150, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      category.name,
                      style: TextStyle(
                        color: Color.fromARGB(255, 252, 236, 230),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class cardDeslizableRutasLargas extends StatelessWidget {
  final rutasLargas category;
  const cardDeslizableRutasLargas({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 30),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imgUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(236, 0, 0, 0),
                          Color.fromARGB(150, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      category.name,
                      style: TextStyle(
                        color: Color.fromARGB(255, 252, 236, 230),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class cardDeslizableRutasCortas extends StatelessWidget {
  final rutasCortas category;
  const cardDeslizableRutasCortas({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 30),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imgUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(236, 0, 0, 0),
                          Color.fromARGB(150, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      category.name,
                      style: TextStyle(
                        color: Color.fromARGB(255, 252, 236, 230),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class contenedorServicios extends StatelessWidget {
  String url = "";
  String titulo = "";
  String telefono = "";
  String calle = "";
  String imagen = "";

  contenedorServicios({
    Key? key,
    required this.url,
    required this.titulo,
    required this.telefono,
    required this.calle,
    required this.imagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // Con esta propiedad modificamos la forma de nuestro card
      // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      // Con esta propiedad agregamos margen a nuestro Card
      // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
      margin: EdgeInsets.all(15),

      // Con esta propiedad agregamos elevación a nuestro card
      // La sombra que tiene el Card aumentará
      elevation: 10,

      // La propiedad child anida un widget en su interior
      // Usamos columna para ordenar un ListTile y una fila con botones
      child: Column(
        children: <Widget>[
          // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(20, 15, 30, 0),
            title: Text(titulo),
            subtitle: Text(calle),
            leading: Image(image: NetworkImage(imagen)),
          ),

          // Usamos una fila para ordenar los botones del card
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[CallPhoneWidget(telefono), CallURLWidget(url)],
          )
        ],
      ),
    );
  }
}
