import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: new AppBar(
         title: new Text("Gallery"),
       ),
    );
  }
}