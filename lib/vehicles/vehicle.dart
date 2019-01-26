import 'package:flutter/material.dart';

class Vehicle extends StatefulWidget {
  _VehicleState createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: new AppBar(
         title: new Text("Vehicle"),
       ),
    );
  }
}