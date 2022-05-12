import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tfg/Widgets/tarjetas.dart';
import 'package:tfg/models/modelNoticas.dart';

import '../Widgets/appBar.dart';
import '../Widgets/textos.dart';

class noticiasScreen extends StatefulWidget {
  const noticiasScreen({Key? key}) : super(key: key);

  @override
  State<noticiasScreen> createState() => _noticiasScreenState();
}

class _noticiasScreenState extends State<noticiasScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //titulo de la aplicacion
  String titulo = 'Noticias y bandos';
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> widgetOptions = <Widget>[
    //Si estas en la zona del tab en la que salen todas las noticias
    ListView.separated(
      itemBuilder: ((context, index) {
        DateTime fecha = noticias.list_noticias[index].fecha.toDate();
        String fecha_string = DateFormat('dd/MM/yyyy').format(fecha).toString();
        return tarjetaExpandible(
          texto: noticias.list_noticias[index].texto,
          titulo: fecha_string,
          url: noticias.list_noticias[index].imgUrl,
        );
      }),
      itemCount: noticias.list_noticias.length,
      separatorBuilder: (context, index) => Divider(),
    ),
    //Si estas en la zona del tab en la que salen solo los anuncios
    ListView.separated(
      itemBuilder: ((context, index) {
        if (noticias.list_noticias[index].tipo == 'anuncio') {
          return tarjetaExpandible(
            texto: noticias.list_noticias[index].texto,
            titulo: noticias.list_noticias[index].title,
            url: noticias.list_noticias[index].imgUrl,
          );
        }
        return Container();
      }),
      itemCount: noticias.list_noticias.length,
      separatorBuilder: (context, index) => Divider(),
    ),
    //Si estas en la zona del tab en la que salen solo los bandos y noticias
    ListView.separated(
      itemBuilder: ((context, index) {
        if (noticias.list_noticias[index].tipo == 'bando' ||
            noticias.list_noticias[index].tipo == 'noticia') {
          return tarjetaExpandible(
            texto: noticias.list_noticias[index].texto,
            titulo: noticias.list_noticias[index].title,
            url: noticias.list_noticias[index].imgUrl,
          );
        }
        return Container();
      }),
      itemCount: noticias.list_noticias.length,
      separatorBuilder: (context, index) => Divider(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //widget creado en el que pasamos el titulo y el estado del Scaffold
      appBar: appbarPersonalizado(title: titulo, scaffoldKey: _scaffoldKey),
      //widget creado en el que abrimos el menu de la izquierda
      drawer: drawerPersonalizado(),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Anuncios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Bandos y noticias',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
