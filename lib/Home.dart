import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            centerTitle: true,
            title: Column(
              children: <Widget>[
                Text("Electoral College", textScaleFactor: 1.5),
              ],
            ),
            backgroundColor: Colors.transparent,
            flexibleSpace: Image(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.fitWidth,
            ),
         ),
        ),
      
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Candidates"),
            Text("The Electoral College"),
            Text("Map"),
            Text("Calendar"),
          ],
        )
       ),
      )
    );
  } 
}