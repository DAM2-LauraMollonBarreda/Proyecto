import 'package:flutter/material.dart';
import 'package:tfg/Screens/mapaScreen.dart';

import '../Widgets/widgets.dart';

class mosqueruelaScreen extends StatefulWidget {
  const mosqueruelaScreen({Key? key}) : super(key: key);

  @override
  State<mosqueruelaScreen> createState() => _mosqueruelaScreenState();
}

class _mosqueruelaScreenState extends State<mosqueruelaScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  //titulo de la aplicacion
  String titulo = 'Mosqueruela';
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
        //la lista contiente
        children: [
          //un espacio
          Container(
            margin: EdgeInsets.all(15),
          ),
          //widget en el que pasamos icono, titulo y la informacion
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.all(10)),
            filaInfo(icono: Icons.map, titulo: 'Latitud', texto: '4654645654'),
            Padding(padding: EdgeInsets.all(15)),
            filaInfo(icono: Icons.map, titulo: 'Longitud', texto: '454546'),
          ]),
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.all(15)),
            filaInfo(icono: Icons.people, titulo: 'Habitantes', texto: '500'),
            Padding(padding: EdgeInsets.only(left: 60)),
            filaInfo(icono: Icons.terrain, titulo: 'Extension', texto: 'km'),
          ]),

          filaInfo(icono: Icons.height, titulo: 'Altitud', texto: '1500'),
          //un boton en el que se abre el mapa
          Padding(padding: EdgeInsets.all(10)),
          Ink(
            //boton redondo
            decoration: const ShapeDecoration(
              color: Color(0xfffa825a),
              shape: CircleBorder(),
            ),
            //y el icono
            child: IconButton(
              icon: const Icon(Icons.location_on),
              color: Colors.cyan[50],
              //TO_DO:
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mapaScreen()));
              },
            ),
          ),
          //espacio
          Container(
            margin: EdgeInsets.all(15),
          ),
          //widget con imagen titulo y texto (desplegable)
          tarjetaExpandible(
              url:
                  "https://alojamientosalbentosa.com/images/Mosqueruela-01.jpg",
              titulo: 'Patrimonio',
              texto:
                  'Mosqueruela fue declarada Conjunto Hist??rico-Art??stico en 1982. Conserva gran parte de la muralla original y sus edificios m??s emblem??ticos. Una visita por sus calles revela el paso de los siglos. \n La villa de Mosqueruela presenta uno de los mejores ejemplos de trazado ortogonal medieval amurallado que se conserva en las serran??as turolenses. Se trata de una estructura basada en conocimientos filos??ficos y human??sticos muy anteriores (Arist??teles) que comienza a aplicarse durante el siglo XIII en las denominadas pueblas tard??as, siendo la zona levantina un lugar destacado. Pero si el trazado es ejemplar, no lo es menos la evoluci??n urban??stica de la villa a lo largo del tiempo, con un desarrollo arquitect??nico de gran calidad, cuyo recorrido arranca en la plaza Mayor.\n Un recorrido por los hitos del Patrimonio Chinchirino:\n De la plaza Mayor de Mosqueruela parte el trayecto para disfrutar de las joyas patrimoniales que encierra su casco urbano. Aqu?? se alza el edificio Consistorial, porticado, al igual que otro de los laterales de la plaza, una de sus se??as de identidad. Tambi??n la Iglesia parroquial de la Asunci??n, fruto de una compleja evoluci??n arquitect??nica, que ha conseguido que sea una mezcla de g??tico y barroco. A ella se le incorpor?? la estructura del Archivo de la Comunidad de Teruel, que ocupa una segunda planta del templo. \n El recorrido sigue por la calle mayor en direcci??n al portal de San Roque (entrada principal de la muralla). Aqu?? se levantan todav??a las murallas de la villa, unas de las mejores conservadas de la provincia. Borde??ndolas, se accede de nuevo al recinto amurallado por otro portal: el de la Vistorre. Por la parte alta del pueblo se llega a la entrada trasera de la muralla (el Postigo). A mitad calle emergen la Casa Fuerte y el Portal de Teruel. \n Desde el Postigo parte la calle Ricos Hombres, que debe su nombre a que en ella se hospedaban los nobles del rey. Destaca por sus trabajados aleros, todos ellos de madera y distintos entre s??. El recorrido contin??a por la calle Isabel Belsa, acceso principal al palacio del Rey Don Jaime y el portal del hospital, que conduce de nuevo a la zona exterior del recinto amurallado. \n Bajando por la calle a la derecha del portal, se puede observar la parte trasera del palacio real y su torre circular. Un peque??o tramo que conduce a la escalinata y redirige a la antigua ermita de Santa Engracia (actual Casa de Cultura) donde podemos visitar el Museo de Documentos Hist??ricos y el Museo de la Escuela Antigua.\n El recorrido finaliza a trav??s de las porteras, donde antiguamente hab??a otro portal, y desde donde se vislumbra de nuevo la plaza a trav??s de la calle Mayor. \n Fuera del casco urbano, Mosqueruela est?? salpicada de ermitas: Loreto, San Antonio (en un peque??o cerro desde el que puede disfrutarse de una panor??mica de la localidad y su entorno) o San Lamberto. Tambi??n los restos del priorato de Santa Ana, y una exposici??n al aire libre de esculturas abstractas conocidas como ???Casetas de Cabez??n???, que bordean precisamente casetas de piedra en seco, uno de los elementos arquitect??nicos que caracteriza el paisaje de Mosqueruela.'),
          tarjetaExpandible(
              url:
                  "https://1.bp.blogspot.com/-zPmxJwBILDU/XlhooV5d4YI/AAAAAAAAUQI/n0eKjK6XCwQAu0c1RB4yQLv5BbBpmfl_QCNcBGAsYHQ/s1600/Mosqueruela-099.jpg",
              titulo: 'Historia',
              texto:
                  'Se cree que el origen del nombre proviene de la palabra "mosquera", que era una zona de descanso para el ganado trashumante (o m??s bien "transterminante") que contaba con agua y sombra. Poco adecuada para el cultivo, tras la conquista aragonesa, a finales del siglo XII, toda la zona se dedic?? a la "boyante" explotaci??n ganadera, en aquella ??poca tan necesaria para las ambiciones de los monarcas como lucrativa. Los or??genes documentados de Mosqueruela se remontan a 1265, cuando fue fundada por orden de Jaime I, aunque todo indica que en tal lugar ya exist??a una casa fuerte habitada. \n A lo largo de los siglos XIII y XIV la villa consigui?? un gran desarrollo debido principalmente a la ganader??a. Esto explica la existencia de viejas mas??as, que eran peque??os centros de explotaci??n. En 1333 el ayuntamiento se hizo con el Castillo del Mayo o del Majo, en pugna con el ayuntamiento de Villafranca del Cid. A finales del siglo XIV, durante la guerra de los Pedros (1356-1369), Mosqueruela permaneci?? fiel a Pedro IV, obteniendo el t??tulo de villa en 1366.'),
        ],
      ),
    );
  }
}
