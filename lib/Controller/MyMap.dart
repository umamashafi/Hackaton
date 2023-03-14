import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mymap extends StatefulWidget {
 Mymap({Key? key}) : super(key: key);

  @override
  _MymapState createState() => _MymapState();
}

class _MymapState extends State<Mymap> {
  final LatLng _center = const LatLng(45.521563, -122.677433);
  late GoogleMapController _mapController;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}