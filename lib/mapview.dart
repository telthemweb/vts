import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewer extends StatefulWidget {
  _MapViewerState createState() => _MapViewerState();
}

class _MapViewerState extends State<MapViewer> {
  GoogleMapController myController;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: new AppBar(
         title: new Text("Mapview"),
       ),

       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Container(
             height: 500.0,
             width: 350.0,
             child: GoogleMap(
              initialCameraPosition: CameraPosition(target: null,zoom: 10.0),
               onMapCreated: (controller){
                 setState(() {
                  myController=controller;
                 });
               },
             ),
           )
         ],
       ),
    );
  }
}
