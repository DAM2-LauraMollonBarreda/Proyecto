import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tfg/models/modelCazaJabali.dart';

class mapaBatidasScreen extends StatefulWidget {
  @override
  _mapaBatidasScreenState createState() => _mapaBatidasScreenState();
}

class _mapaBatidasScreenState extends State<mapaBatidasScreen> {
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
          "¿Donde se esta cazando?",
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
          zoom: 13.0, //initial zoom level
        ),
        markers: getmarkers(), //markers to show on map
        mapType: MapType.satellite, //map type
        onMapCreated: (controller) {
          //method called when map is created
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }

  Set<Marker> getmarkers() {
    double longitud = 0;
    double latitud = 0;
    String title = '';
    String descripcion = '';
    for (var i = 0; i < cazaJabali.list_caza.length; i++) {
      longitud = cazaJabali.list_caza[i].longitud;
      latitud = cazaJabali.list_caza[i].latitud;
      title = cazaJabali.list_caza[i].zona;
      descripcion = cazaJabali.list_caza[i].localizacion;
    }
    LatLng showLocationBatida = LatLng(longitud, latitud);
    //markers to place on map
    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocationBatida.toString()),
        position: showLocationBatida, //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: title,
            snippet: descripcion),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
    });

    return markers;
  }
}
