import 'package:flutter/material.dart';

class Map extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            centerTitle: true,
            title: Text("Polls and Other Locations"),
            backgroundColor: Colors.transparent,
            flexibleSpace: Image(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
            ),
         ),
        ),
      
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("TBD"),
          ],
        )
       ),
      )
    );
  } 
}