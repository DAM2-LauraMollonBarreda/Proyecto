import 'package:flutter/material.dart';
import 'package:tfg/Screens/mapaBatidasScreen.dart';
import 'package:tfg/Widgets/botones.dart';
import 'package:tfg/Widgets/tarjetas.dart';

import '../../Widgets/appBar.dart';

class cazaScreen extends StatelessWidget {
  const cazaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    //titulo de la aplicacion
    String titulo = 'Caza';
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      body: ListView(
        children: [
          //cabra
          tarjetaExpandible(
              url:
                  'https://static.eldiario.es/clip/e9c3bed7-e993-4739-a9f9-2a20b673d2a6_16-9-aspect-ratio_default_0.jpg',
              titulo: 'Cabra montes',
              texto:
                  'Teruel es el territorio natural de esta especie salvaje única en el mundo, endémica de la Península Ibérica –lo que la ha transformado en pieza de caza mayor y multiplicado su cotización entre los cazadores, también los de rango internacional- y una de las cabras autóctonas más valoradas por su aprovechamiento cinegético.\nEn especial los ejemplares macho, de perfil imponente gracias a su majestuosa cornamenta, que puede llegar a medir hasta 90 centímetros de longitud.\nLos ejemplares de esta especie suelen separarse en grupos de sexos de más de 30 individuos. Los machos van por un lado y las hembras junto a las crías o los más jóvenes, por otro.\nPerfecta trepadora y tremendamente ágil –se mueve con asombrosa destreza por paredes rocosas prácticamente verticales- la cabra montés encuentra en la alta montaña su hogar. Y en la sierra del Maestrazgo turolense, uno de sus hábitats más reclamados.\nSe trata de una especie muy antigua. Su origen se situaría en el Plioceno: hace 7 millones de años. La cabra montés se ha cazado desde los tiempos primitivos. Así lo reflejan las escenas de caza de cabras plasmadas en las pinturas rupestres, como las de la cueva de Pair-non-Pair (Francia), donde ha sido hallado el grabado rupestre más antiguo.'),
          Row(
            children: <Widget>[
              Expanded(
                child: CallURLWidget('https://mosqueruela.es/cinegetica/'),
              ),
              Expanded(
                child: CallPhoneWidget('978 80 70 07'),
              ),
            ],
          ),
          //jabali
          tarjetaExpandible(
              url: 'https://fac.es/img/noticias/1590640416-jabali.jpg',
              titulo: 'Jabali',
              texto:
                  'La caza del jabalí tambien es tipica en el municipio. Se realiza tanto en grupo de grandes personas llamada batida en la que participan cazadores que estan esperando al jabalí en un sitio logico (por donde suele pasar el jabalí), como perros que van en busca de estos animales para sacarlos de sus escondites. A continuanción se muestra un mapa en el cual se marca el sitio en el que se esta cazando. En caso de que el marcador se encuentre dentro pueblo significa que no se esta realizando ninguna batida en el termino municipal.'),
          Row(
            children: <Widget>[
              Expanded(
                  child: IconButton(
                icon: Icon(
                  Icons.map,
                  color: Colors.cyan,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => mapaBatidasScreen()));
                },
              )),
            ],
          ),
          //caza menor
          tarjetaExpandible(
              url:
                  'https://revistajaraysedal.es/wp-content/uploads/agricultura-caza-PAC.jpg',
              titulo: 'Caza menor',
              texto:
                  'La caza menor queda caracterizada por el tamaño de los animales a capturar y no estrictamente por la forma o la modalidad de la cacería. Se ejercita, pues, sobre piezas de pequeño tamaño tales como la perdiz, la tórtola, el conejo, ciertas aves acuáticas, especies migratorias, etc. \n En la zona de nuestro pueblo lo que más se practica es la caza de codorniz, pediz y liebre'),
        ],
      ),
    );
  }
}
