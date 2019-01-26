import 'package:flutter/material.dart';
import 'package:vtsproject/drivers/driver.dart';
import 'package:vtsproject/gallery/gallery.dart';
import 'package:vtsproject/mapview.dart';
import 'package:vtsproject/reports/report.dart';
import 'package:vtsproject/tracking/tracking.dart';
import 'package:vtsproject/vehicles/vehicle.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xff6200ea),
          elevation: 0.5,
          title: new Text(
            "Dashboard",
            style: new TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new AssetImage('assets/inno.jpg'),
                ),
                accountName: new Text("Innocent Tauzeni"),
                accountEmail: new Text("datatelthem@gmail.com"),
              ),
            ],
          ),
        ),
        body: TheGridView().build(context),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.chat_bubble),
          onPressed: () {},
          backgroundColor: Color(0xff6200ea),
        ),
      ),
    );
  }
}

class TheGridView {
  Card makeGridCell(String name, IconData icon, BuildContext context) {
    return Card(
      color: const Color(0xFFFFF8E1),
      elevation: 1.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          RaisedButton(
            color: const Color(0xFFFFF8E1),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Icon(icon, size: 60.0, color: Colors.orange[900]),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Center(
                    child: Text(name),
                  )
                ],
              ),
            ),

            //apa ndopandiri kuclicker ndichicaller method onpressed _onPressed(context, name)
            onPressed: () {
              _onPressed(context, name);
            },
          )
        ],
      ),
    );
  }

  GridView build(BuildContext context) {
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        makeGridCell('MapView', Icons.map, context),
        makeGridCell('Tracking', Icons.trending_up, context),
        makeGridCell('Vehicles', Icons.local_car_wash, context),
        makeGridCell('Reports', Icons.report, context),
        makeGridCell('Driver', Icons.person, context),
        makeGridCell('Gallery', Icons.photo_camera, context)
      ],
    );
  }
//my navigation +263 774 914 150 MY Whatsapp number
  void _onPressed(BuildContext context, String name) {
    if (name == "Mapview") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MapViewer()));
    } else if (name == "Tracking") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Tracker()));
    } else if (name == "Vehicles") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Vehicle()));
    } else if (name == "Reports") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Report()));
    } else if (name == "Driver") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DriverScreen()));
    } else if (name == "Gallery") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Gallery()));
    }
  }
}
