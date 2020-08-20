import 'package:flutter/material.dart';
import 'Article.dart' as article;
import 'Calendar.dart' as calendar;
import 'Map.dart' as map;
import 'Candidates.dart' as candidates;
import 'Home.dart' as home;
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
    var initializationSettingsAndroid = new AndroidInitializationSettings('notif_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();

    var initializationSettings = new InitializationSettings(initializationSettingsAndroid, initializationSettingsIOS);

    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: onSelectNotification);

    scheduleNotifs();
  }

  Future onSelectNotification(String payload) async {
    if(payload != null){
      debugPrint('notification payload: ' + payload);
    }
  }

  static const eventlist = [
    {
      'id': 'PresidentialDebate1',
      'channel': 'PresidentialDebate1',
      'channelDescription': 'Date of the 1st Presidential Debate',
      'title': 'The 1st Presidential Debate is today!',
      'description': 'Tune in to watch the candidates debate at the University of Notre Dame in Indiana!',
    },
     {
      'id': 'PresidentialDebate2',
      'channel': 'PresidentialDebate2',
      'channelDescription': 'Date of the 2nd Presidential Debate',
      'title': 'The 2nd Presidential Debate is today!',
      'description': 'Tune in to watch the candidates debate at the University of Michigan in Ann Arbor!',
    },
     {
      'id': 'PresidentialDebate3',
      'channel': 'PresidentialDebate3',
      'channelDescription': 'Date of the 3rd Presidential Debate',
      'title': 'The 3rd Presidential Debate is today!',
      'description': 'Tune in to watch the candidates debate at Belmont University in Nashville!',
    },
    {
      'id': 'VPDebate',
      'channel': 'VPDebate',
      'channelDescription': 'Date of the Vice Presidential Debate',
      'title': 'The Vice Presidential Debate is today!',
      'description': 'Tune in to watch the vice presidential candidates debate at the University of Utah in Salt Lake City!',
    },
    {
      'id': 'Election',
      'channel': 'Election',
      'channelDescription': 'Election Day',
      'title': 'It\'s Election Day!',
      'description': 'Get out there and vote!',
    },
  ];
  static final dates = [
    DateTime(2020, 9, 29, 9),
    DateTime(2020, 10, 15, 9),
    DateTime(2020, 10, 22, 9),
    DateTime(2020, 10, 7, 9),
    DateTime(2020, 11, 3, 8),
  ];

  Future scheduleNotifs() async {
    for(var i = 0; i < eventlist.length; i++){
      var scheduledNotificationDateTime =
          dates[i];
      var androidPlatformChannelSpecifics =
          AndroidNotificationDetails(eventlist[i]['id'],
              eventlist[i]['channel'], eventlist[i]['channelDescription']);
      var iOSPlatformChannelSpecifics =
          IOSNotificationDetails();
      NotificationDetails platformChannelSpecifics = NotificationDetails(
          androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
      await flutterLocalNotificationsPlugin.schedule(
          0,
          eventlist[i]['title'],
          eventlist[i]['description'],
          scheduledNotificationDateTime,
          platformChannelSpecifics);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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