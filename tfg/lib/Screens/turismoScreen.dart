import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tfg/models/category_model.dart';

import '../Widgets/widgets.dart';

class turismoScreen extends StatefulWidget {
  const turismoScreen({Key? key}) : super(key: key);

  @override
  State<turismoScreen> createState() => _turismoScreenState();
}

class _turismoScreenState extends State<turismoScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String titulo = 'Turismo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      //en esta pantalla tenemos una lista
      body: ListView(
        children: [
          //espaciodo
          Container(margin: EdgeInsets.all(15)),
          // widget de texto con formato y una alineacion concreta
          encabezados(titulo: "¿Que ver?"),
          //Galeria de imagenes con titulo
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              initialPage: 0,
              autoPlay: false,
            ),
            //imagenes y texto las cojemos de el archivo category_model
            //clase que ver
            items: queVer.ver
                .map((e) => cardDeslizableVer(
                      category: e,
                    ))
                .toList(),
          ),
          // widget de texto con formato y una alineacion concreta
          encabezados(titulo: 'Territorio StarLight'),
          //widget con imagen titulo y texto (desplegable)
          tarjetaExpandible(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiyXryER5OS7mAKeue8hnnCRHCIrJTnw4yXw&usqp=CAU",
              titulo: '',
              texto:
                  'Mosqueruela pertenece a la comarca turolense de Gúdar-Javalambre, certificada como Destino Turístico y Reserva Starlight.  Esta certificación comprende 23 municipios de la comarca turolense y 4 localidades de la provincia de Valencia que se encuentran en el ámbito geográfico próximo al Observatorio Astrofísico de Javalambre. La distinción de Reserva Starlight avala la calidad del cielo nocturno de los territorios y su idoneidad para la práctica de la astronomía y observación de las estrellas en unas condiciones óptimas. El sistema de certificación Starlight se creó con el objetivo de poner en marcha experiencias ligadas a la observación astronómica y fomentar un turismo responsable que preserve las condiciones medioambientales y la iluminación natural de los espacios. En Mosqueruela, esta experiencia astronómica, es una realidad.'),
          // widget de texto con formato y una alineacion concreta
          encabezados(titulo: 'Territorio micologico'),
          //widget con imagen titulo y texto (desplegable)
          tarjetaExpandible(
              url:
                  "https://esenciadepueblo.com/wp-content/uploads/2014/09/robellon.jpg",
              titulo: 'Una joya natural',
              texto:
                  'Los montes del término municipal de Mosqueruela, a medio camino entre el Maestrazgo y Gúdar-Javalambre, son un paraíso micológico, especialmente en otoño y si se da la confluencia climática de haber tenido un verano con tormentas a las que han seguido temperaturas relativamente suaves. Sus bosques de pino bastante llanos favorecen la recolección de setas y hongos. La orografía, unida a la variedad y riqueza micológica que emerge en Mosqueruela, atraen cada año a miles de visitantes. La mayoría en busca del Lactarius deliciosus: el popular robellón. La recolecta está regulada, como medida de preservación medioambiental; cuidado de un entorno natural de gran valor. '),
          // widget de texto con formato y una alineacion concreta
          encabezados(titulo: 'Rutas senderistas'),
          //Galeria de imagenes con titulo
          CarouselSlider(
            //imagenes y texto las cojemos de el archivo category_model
            //clase rutasCortas
            items: rutasCortas.rutasc
                .map((e) => cardDeslizableRutasCortas(category: e))
                .toList(),
            options: CarouselOptions(
              aspectRatio: 1.5,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              initialPage: 0,
              autoPlay: false,
            ),
          ),
          //galeria de imagnes con titulo
          CarouselSlider(
            //imagenes y texto las cojemos de el archivo category_model
            //clase rutasLargas
            items: rutasLargas.rutasl
                .map((e) => cardDeslizableRutasLargas(category: e))
                .toList(),
            options: CarouselOptions(
              aspectRatio: 1.5,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              initialPage: 0,
              autoPlay: false,
            ),
          ),
          // widget de texto con formato y una alineacion concreta
          encabezados(titulo: 'Oficina de turismo'),
          // widget con boton abre el telefono para llamar al numero que le estamos pasando
          CallPhoneWidget('978805258'),
        ],
      ),
    );
  }
}
