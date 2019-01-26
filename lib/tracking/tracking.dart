import 'package:flutter/material.dart';

class Tracker extends StatefulWidget {
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: new AppBar(
         title: new Text("Tracking"),
       ),
    );
  }
}