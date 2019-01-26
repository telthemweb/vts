// import 'package:flutter/material.dart';

// class MainHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: new AppBar(
//           backgroundColor: Color(0xff6200ea),
//           elevation: 0.5,
//           title: new Text(
//             "Home",
//             style: new TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//         body: Home(),
//       ),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: new GridView.count(
//             crossAxisCount: 2,
//             children: new List.generate(4, (index) {
              
//               new Container(
//                 child: Card(
//                   color: Colors.indigoAccent,
//                   elevation: 5.0,
//                   child: Center(
//                     child: RaisedButton(
//                       color: Colors.black12,
//                       colorBrightness: Brightness.dark,
//                       child: new Text("Here we go"),
//                       onPressed: () {
//                         _onPressed(index);
//                       },
//                     ),
//                   ),
//                 ),
//               );
//             })));
//   }

//   void _onPressed(int index) {

//   }
// }
