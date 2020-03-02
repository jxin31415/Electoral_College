import 'dart:async';
import 'package:flutter/material.dart';
import 'package:calendar_view_widget/calendar_view_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class Calendar extends StatefulWidget {

  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<Calendar> {
  StreamController<List<Map<String, String>>> eventsController = new StreamController();

  @override
  void dispose() {
    eventsController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const eventList = [
      {
        'name': 'Test',
        'date': '2020-03-03 00:00:00',
        'id': '1',
      },
      {
        'name': 'Test2',
        'date': '2020-03-06 00:00:00',
        'id': '2',
      },
      {
        'name': 'Test3',
        'date': '2020-03-27 00:00:00',
        'id': '3',
      }
    ];

    final theme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue[300],
      accentColor: Colors.red[300],
      canvasColor: Colors.white,
      backgroundColor: Colors.lightBlue,
      dividerColor: Colors.blueGrey,
      textTheme: ThemeData.dark().textTheme.copyWith(
            display1: TextStyle(
              fontSize: 21.0,
            ),
            subhead: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
            headline: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            title: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
      accentTextTheme: ThemeData.dark().accentTextTheme.copyWith(
            body1: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
            title: TextStyle(
              fontSize: 21.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            display1: TextStyle(
              fontSize: 21.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
    );

    eventsController.add(eventList);
    _launchURL(Map<String, String> event) async {
    const url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Upcoming Elections and Events"),
        backgroundColor: Colors.transparent,
        flexibleSpace: Image(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
        ),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CalendarView(
              onEventTapped: _launchURL,
              titleField: 'name',
              detailField: 'location',
              dateField: 'date',
              separatorTitle: 'Events',
              theme: theme,
              eventStream: eventsController.stream,
            ),
          ],
        ),
      ),
    );
  }
}

