import 'package:flutter/material.dart';
import 'Article.dart' as article;
import 'Calendar.dart' as calendar;
import 'Map.dart' as map;
import 'Candidates.dart' as candidates;
import 'Home.dart' as home;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electoral College',
      theme: ThemeData(
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: new Material(
            color: Colors.blue,
            child: new TabBar(
              tabs: <Tab> [
                new Tab(icon: new Icon(Icons.home)),
                new Tab(icon: new Icon(Icons.people)),
                new Tab(icon: new Icon(Icons.poll)),
                new Tab(icon: new Icon(Icons.location_on)),
                new Tab(icon: new Icon(Icons.calendar_today)),
              ]
           )
        ),
        body: new TabBarView(
          children: <Widget>[
            new home.Home(),
            new candidates.Candidates(),
            new map.Map(),
            new calendar.Calendar(),
            new article.Article(),
          ]
      ),
        ),
    )
    );
  }
}