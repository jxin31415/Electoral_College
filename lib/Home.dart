import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final TabController controller;

  Home(this.controller);

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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background_capitol.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.topCenter,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
             shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(20.0),
             ),
             color: Colors.blue[100],
             highlightColor: Colors.blue[300],
             onPressed: () {
               goToTab(1, controller);
             },
             child: Text(
                'Candidates',
                style: TextStyle(fontSize: 20)
             ),
            ),
            SizedBox(height: 15),
            RaisedButton(
             shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(20.0),
             ),
             color: Colors.blue[100],
             highlightColor: Colors.blue[300],
             onPressed: () {
               goToTab(2, controller);
             },
             child: Text(
                'Map',
                style: TextStyle(fontSize: 20)
             ),
            ),
            SizedBox(height: 15),
            RaisedButton(
             shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(20.0),
             ),
             color: Colors.blue[100],
             highlightColor: Colors.blue[300],
             onPressed: () {
               goToTab(3, controller);
             },
             child: Text(
                'Calendar',
                style: TextStyle(fontSize: 20)
             ),
            ),
            SizedBox(height: 15),
            RaisedButton(
             shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(20.0),
             ),
             color: Colors.blue[100],
             highlightColor: Colors.blue[300],
             onPressed: () {
               goToTab(4, controller);
             },
             child: Text(
                'Where do I start?',
                style: TextStyle(fontSize: 20)
             ),
            ),
          ],
        )
       ),
      )
    );
  } 

  goToTab(int index, TabController controller) {
    controller.animateTo(index);
  }
}