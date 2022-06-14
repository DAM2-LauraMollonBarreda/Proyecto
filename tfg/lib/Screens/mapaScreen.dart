import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapaScreen extends StatefulWidget {
  @override
  _mapaScreenState createState() => _mapaScreenState();
}

class _mapaScreenState extends State<mapaScreen> {
  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation =
      const LatLng(40.3610837, -0.4489759); //location to show in map

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    //titulo de la aplicacion
    String titulo = 'Mosqueruela';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mapa del pueblo",
          style: TextStyle(
              color: Color(0xfffa825a),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xfffa825a)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: GoogleMap(
        //Map widget from google_maps_flutter package
        zoomGesturesEnabled: true, //enable Zoom in, out on map
        initialCameraPosition: CameraPosition(
          //innital position in map
          target: showLocation, //initial position
          zoom: 16.0, //initial zoom level
        ),
      ),
    );
  }
}
