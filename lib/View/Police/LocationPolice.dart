import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/Controller/Map.dart';
import 'package:myapp/Controller/marker.dart';
import 'package:myapp/View/Ambulance/InfoPage.dart';
import 'package:myapp/View/Ambulance/ShowStatus.dart';
import 'package:myapp/View/Police/ShowStatus.dart';

class PoliceMap extends StatelessWidget {
  final mapsWidgetController = GlobalKey<GoogleMapsWidgetState>();
  @override
  Widget build(BuildContext context) {
    
    
   
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
      backgroundColor:   Color.fromARGB(148, 228, 228, 228),
        leading:  Icon(
                  Icons.location_city_sharp,
                  color: Colors.orangeAccent,
                ),
        //Image(image: AssetImage('assets/GM.PNG'),height: 110.0, width: 60.0),
            title: Text(
              "Location",
              style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize:20),
            ),
        //title: Text('popup message'),
      ),
          body: Column(
            children: [
              Expanded(
                child: GoogleMapsWidget(
                  apiKey: "AIzaSyCzSbUjCHJDCgB8F3tAZ406i7h81QhXn4I",
                  key: mapsWidgetController,
                  sourceLatLng: LatLng(
                    40.484000837597925,
                    -3.369978368282318,
                  ),
                  destinationLatLng: LatLng(
                    40.48017307700204,
                    -3.3618026599287987,
                  ),

                //  OPTIONAL PARAMETERS /
                  routeWidth: 2,
                  sourceMarkerIconInfo: MarkerIconInfo(
                    infoWindowTitle: "This is source name",
                    onTapInfoWindow: (_) {
                      print("Tapped on source info window");
                    },
                    assetPath: "assets/images/house-marker-icon.png",
                  ),
                  destinationMarkerIconInfo: MarkerIconInfo(
                    assetPath: "assets/images/restaurant-marker-icon.png",
                  ),
                  driverMarkerIconInfo: MarkerIconInfo(
                    infoWindowTitle: "Alex",
                    assetPath: "assets/images/driver-marker-icon.png",
                    onTapMarker: (currentLocation) {
                      print("Driver is currently at $currentLocation");
                    },
                    assetMarkerSize: Size.square(125),
                    rotation: 90,
                  ),
                  onPolylineUpdate: (p) {
                    print("Polyline updated: ${p.points}");
                  },
                  updatePolylinesOnDriverLocUpdate: true,
                  // mock stream
                  driverCoordinatesStream: Stream.periodic(
                    Duration(milliseconds: 500),
                    (i) => LatLng(
                      40.47747872288886 + i / 10000,
                      -3.368043154478073 - i / 10000,
                    ),
                  ),
                  totalTimeCallback: (time) => print(time),
                  totalDistanceCallback: (distance) => print(distance),
                ),
              ),
              // demonstrates how to interact with the controller
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent, //<-- SEE HERE
                ),
                        onPressed: () {
                      //     Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => (AmbulanceMessg ())));
                          // mapsWidgetController.currentState!.setSourceLatLng(
                          //   LatLng(
                          //     40.484000837597925 * (Random().nextDouble()),
                          //     -3.369978368282318,
                          //   ),
                          // );
                        },
                        child: Text('Trace Location'),
                      ),
                    ),
                    const SizedBox(width: 10, ),
                    Expanded(
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent, //<-- SEE HERE
                ),
                        onPressed: () async {
                          Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (PoliceMessg ())));
                          // final googleMapsCon = await mapsWidgetController
                          //     .currentState!
                          //     .getGoogleMapsController();
                          // googleMapsCon.showMarkerInfoWindow(
                          //   MarkerIconInfo.sourceMarkerId,
                         // );
                        },
                        child: Text('Show Status'),
                        
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}