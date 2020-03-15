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
               borderRadius: new BorderRadius.circular(10.0),
              ),
              textColor: Colors.white,
              color: Colors.blue[100],
              highlightColor: Colors.blue[300],
              onPressed: () {
                goToTab(1, controller);
              },
              padding: const EdgeInsets.all(0),
              child: Container(
                decoration: const BoxDecoration(
                 gradient: LinearGradient(
                  colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
               'Candidates',
                style: TextStyle(fontSize: 20)
               ),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(0),
              textColor: Colors.white,
              color: Colors.blue[100],
              highlightColor: Colors.blue[300],
              onPressed: () {
                goToTab(2, controller);
              },
              child: Container(
                decoration: const BoxDecoration(
                 gradient: LinearGradient(
                  colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
               'Where do I start?',
                style: TextStyle(fontSize: 20)
               ),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(0),
              textColor: Colors.white,
              color: Colors.blue[100],
              highlightColor: Colors.blue[300],
              onPressed: () {
                goToTab(3, controller);
              },
              child: Container(
                decoration: const BoxDecoration(
                 gradient: LinearGradient(
                  colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
               'Calendar',
                style: TextStyle(fontSize: 20)
               ),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              shape: RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(0),
              textColor: Colors.white,
              color: Colors.blue[100],
              highlightColor: Colors.blue[300],
              onPressed: () {
                goToTab(4, controller);
              },
              child: Container(
                decoration: const BoxDecoration(
                 gradient: LinearGradient(
                  colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
               '   Map   ',
                style: TextStyle(fontSize: 20)
               ),
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