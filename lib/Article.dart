import 'package:flutter/material.dart';

class Article extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        body: generateArticle()
       ),
      );
  } 

  Widget generateArticle(){
    return ListView(
      children: <Widget>[
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text("What is the Electoral College?",
            textScaleFactor: 3,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text("According to all known laws of aviation, there is no way a bee should be able to fly. Its wings are too small to get its fat little body off the ground."),
        ),

        //TO-DO
      ],
    );
  }
}