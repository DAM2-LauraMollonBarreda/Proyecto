import 'package:flutter/material.dart';

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
          filaInfo(icono: Icons.map, titulo: 'Latitud', texto: '4654645654'),
          filaInfo(icono: Icons.map, titulo: 'Longitud', texto: '454546'),
          filaInfo(icono: Icons.people, titulo: 'Habitantes', texto: '500'),
          filaInfo(icono: Icons.terrain, titulo: 'Extension', texto: 'km'),
          filaInfo(icono: Icons.height, titulo: 'Altitud', texto: '1500'),
          //un boton en el que se abre el mapa
          Ink(
            //boton redondo
            decoration: const ShapeDecoration(
              color: Colors.red,
              shape: CircleBorder(),
            ),
            //y el icono
            child: IconButton(
              icon: const Icon(Icons.map),
              color: Colors.white,
              //TO_DO:
              onPressed: () {},
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
                  'Mosqueruela fue declarada Conjunto Histórico-Artístico en 1982. Conserva gran parte de la muralla original y sus edificios más emblemáticos. Una visita por sus calles revela el paso de los siglos. \n La villa de Mosqueruela presenta uno de los mejores ejemplos de trazado ortogonal medieval amurallado que se conserva en las serranías turolenses. Se trata de una estructura basada en conocimientos filosóficos y humanísticos muy anteriores (Aristóteles) que comienza a aplicarse durante el siglo XIII en las denominadas pueblas tardías, siendo la zona levantina un lugar destacado. Pero si el trazado es ejemplar, no lo es menos la evolución urbanística de la villa a lo largo del tiempo, con un desarrollo arquitectónico de gran calidad, cuyo recorrido arranca en la plaza Mayor.\n Un recorrido por los hitos del Patrimonio Chinchirino:\n De la plaza Mayor de Mosqueruela parte el trayecto para disfrutar de las joyas patrimoniales que encierra su casco urbano. Aquí se alza el edificio Consistorial, porticado, al igual que otro de los laterales de la plaza, una de sus señas de identidad. También la Iglesia parroquial de la Asunción, fruto de una compleja evolución arquitectónica, que ha conseguido que sea una mezcla de gótico y barroco. A ella se le incorporó la estructura del Archivo de la Comunidad de Teruel, que ocupa una segunda planta del templo. \n El recorrido sigue por la calle mayor en dirección al portal de San Roque (entrada principal de la muralla). Aquí se levantan todavía las murallas de la villa, unas de las mejores conservadas de la provincia. Bordeándolas, se accede de nuevo al recinto amurallado por otro portal: el de la Vistorre. Por la parte alta del pueblo se llega a la entrada trasera de la muralla (el Postigo). A mitad calle emergen la Casa Fuerte y el Portal de Teruel. \n Desde el Postigo parte la calle Ricos Hombres, que debe su nombre a que en ella se hospedaban los nobles del rey. Destaca por sus trabajados aleros, todos ellos de madera y distintos entre sí. El recorrido continúa por la calle Isabel Belsa, acceso principal al palacio del Rey Don Jaime y el portal del hospital, que conduce de nuevo a la zona exterior del recinto amurallado. \n Bajando por la calle a la derecha del portal, se puede observar la parte trasera del palacio real y su torre circular. Un pequeño tramo que conduce a la escalinata y redirige a la antigua ermita de Santa Engracia (actual Casa de Cultura) donde podemos visitar el Museo de Documentos Históricos y el Museo de la Escuela Antigua.\n El recorrido finaliza a través de las porteras, donde antiguamente había otro portal, y desde donde se vislumbra de nuevo la plaza a través de la calle Mayor. \n Fuera del casco urbano, Mosqueruela está salpicada de ermitas: Loreto, San Antonio (en un pequeño cerro desde el que puede disfrutarse de una panorámica de la localidad y su entorno) o San Lamberto. También los restos del priorato de Santa Ana, y una exposición al aire libre de esculturas abstractas conocidas como ‘Casetas de Cabezón’, que bordean precisamente casetas de piedra en seco, uno de los elementos arquitectónicos que caracteriza el paisaje de Mosqueruela.'),
          tarjetaExpandible(
              url:
                  "https://1.bp.blogspot.com/-zPmxJwBILDU/XlhooV5d4YI/AAAAAAAAUQI/n0eKjK6XCwQAu0c1RB4yQLv5BbBpmfl_QCNcBGAsYHQ/s1600/Mosqueruela-099.jpg",
              titulo: 'Historia',
              texto: ''),
        ],
      ),
    );
  }
}
