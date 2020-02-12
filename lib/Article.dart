import 'package:flutter/material.dart';

class Article extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
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

  Widget generateArticle(){
    return ListView(

    );
  }
}