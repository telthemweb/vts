import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Reports"),
       ),
    );
  }
}