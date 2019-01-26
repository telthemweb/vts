import 'package:flutter/material.dart';

class DriverScreen extends StatefulWidget {
  _DriverScreenState createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: new AppBar(
         title: new Text("Drivers"),
       ),
    );
  }
}