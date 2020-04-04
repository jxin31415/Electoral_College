import 'package:flutter/material.dart';
import 'Article.dart' as article;
import 'Calendar.dart' as calendar;
import 'Map.dart' as map;
import 'Candidates.dart' as candidates;
import 'Home.dart' as home;
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatefulWidget {

  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electoral College',
      theme: ThemeData(
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: new Material(
            color: Colors.blue,
            child: new TabBar(
              controller: _tabController,
              tabs: <Tab> [
                new Tab(icon: new Icon(Icons.home)),
                new Tab(icon: new Icon(Icons.people)),
                new Tab(icon: new Icon(Icons.library_books)),
                new Tab(icon: new Icon(Icons.calendar_today)),
                new Tab(icon: new Icon(Icons.location_on)),
              ]
           )
        ),
        body: new TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: <Widget>[
            new home.Home(this._tabController),
            new candidates.Candidates(),
            new article.Article(),
            new calendar.Calendar(),
            new map.Map(),
          ]
        ) ,
      ),
    );
  }
}