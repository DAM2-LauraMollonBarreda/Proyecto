import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class controllerMapaBatida extends ChangeNotifier {
  late GoogleMapController mapController;
  final Map<MarkerId, Marker> _markers = {};

  Set<Marker> get markers => _markers.values.toSet();

  final initialCameraPosition =
      const CameraPosition(target: LatLng(40.3610837, -0.4489759), zoom: 15);

  void onMapCreated(GoogleMapController controller) {
    controller = mapController;
  }

  void onTap(LatLng position) {
    final markerId = MarkerId(_markers.length.toString());
    final marker = Marker(markerId: markerId, position: position);
    _markers[markerId] = marker;
    notifyListeners();
  }
}
