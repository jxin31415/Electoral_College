import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'calendarsrc/calendarView.dart';

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
      // Democratic Primary Debates
      {
        'name': 'Democratic Primary Debate',
        'date': '2020-03-15',
        'id': '5',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2019-06-26',
        'id': '6',
      },
      {
        'date': '2019-06-27',
        'id': '6',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2019-07-30',
        'id': '7',
      },
      {
        'date': '2019-07-31',
        'id': '7',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2019-09-12',
        'id': '8',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2019-10-15',
        'id': '9',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2019-11-20',
        'id': '10',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2019-12-19',
        'id': '11',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2020-01-14',
        'id': '12',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2020-02-07',
        'id': '13',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2020-02-19',
        'id': '14',
      },
      {
        'name': 'Democratic Primary Debate',
        'date': '2020-02-25',
        'id': '15',
      },


      // Presidential debates
      {
        'name': '1st Presidential Debate',
        'date': '2020-09-29',
        'id': '1',
      },
      {
        'name': 'Vice Presidential Debate',
        'date': '2020-10-07',
        'id': '2',
      },
      {
        'name': '2nd Presidential Debate',
        'date': '2020-10-15',
        'id': '3',
      },
      {
        'name': '3rd Presidential Debate',
        'date': '2020-10-22',
        'id': '4',
      },

      // Primaries and Caucuses
      {
        'name': 'Iowa Caucuses',
        'date': '2020-02-03',
        'id': '20',
      },
      {
        'name': 'New Hampshire Primaries',
        'date': '2020-02-11',
        'id': '21',
      },
      {
        'name': 'Nevada Democratic Caucus',
        'date': '2020-02-22',
        'id': '22',
      },

      {
        'name': 'South Carolina Democratic Primary',
        'date': '2020-02-29',
        'id': '23',
      },
      {
        'name': 'Super Tuesday (CA, TX, AL, CO, MA, VA, NC, OK, MN, etc.)',
        'date': '2020-03-03',
        'id': '24',
      },
      {
        'name': 'ID, MI, MS, MO, ND, WA Primaries/Caucuses',
        'date': '2020-03-10',
        'id': '25',
      },
      {
        'name': 'AZ, FL, IL Primaries',
        'date': '2020-03-17',
        'id': '26',
      },
      {
        'name': 'Wisconsin Primaries',
        'date': '2020-04-07',
        'id': '27',
      },
      {
        'name': 'Alaska Democratic Primary',
        'date': '2020-04-10',
        'id': '28',
      },
      {
        'name': 'Wyoming Democratic Caucus',
        'date': '2020-04-17',
        'id': '43',
      },
      {
        'name': 'Ohio primaries',
        'date': '2020-04-28',
        'id': '29',
      },
      {
        'name': 'Kansas Democratic Primary',
        'date': '2020-05-02',
        'id': '30',
      },
      {
        'name': 'Nebraska Primaries',
        'date': '2020-05-12',
        'id': '32',
      },
      {
        'name': 'Oregon Primaries',
        'date': '2020-05-19',
        'id': '33',
      },
      {
        'name': 'Hawaii Democratic Primary',
        'date': '2020-05-22',
        'id': '31',
      },
      {
        'name': 'DC, MT, NM, SD Primaries',
        'date': '2020-06-02',
        'id': '34',
      },
      {
        'name': 'Guam, Virgin Isl. Democratic Caucuses',
        'date': '2020-06-06',
        'id': '35',
      },
      {
        'name': 'Puerto Rico Republican Primary',
        'date': '2020-06-07',
        'id': '36',
      },
      {
        'name': 'Georgia, West Virginia Primaries',
        'date': '2020-06-09',
        'id': '37',
      },
      {
        'name': 'Kentucky, New York Primaries',
        'date': '2020-06-23',
        'id': '38',
      },
      {
        'name': 'Delaware, New Jersey Primaries',
        'date': '2020-07-07',
        'id': '39',
      },
      {
        'name': 'Louisiana Primaries',
        'date': '2020-07-11',
        'id': '40',
      },
      {
        'name': 'Puerto Rico Democratic Primary',
        'date': '2020-07-12',
        'id': '41',
      },
      {
        'name': 'Connecticut Primaries',
        'date': '2020-08-11',
        'id': '42',
      },

      // National Conventions and Election Day
      {
        'name': 'Democratic National Convention Starts',
        'date': '2020-08-17',
        'id': '50',
      },
      {
        'date': '2020-08-18',
        'id': '50',
      },
      {
        'date': '2020-08-19',
        'id': '50',
      },
      {
        'name': 'Democratic National Convention Ends',
        'date': '2020-08-20',
        'id': '50',
      },
      {
        'name': 'Republican National Convention Starts',
        'date': '2020-08-24',
        'id': '51',
      },
      {
        'date': '2020-08-25',
        'id': '51',
      },
      {
        'date': '2020-08-26',
        'id': '51',
      },
      {
        'name': 'Republican National Convention Ends',
        'date': '2020-08-27',
        'id': '51',
      },
      {
        'name': '2020 Election Day',
        'date': '2020-11-03',
        'id': '52',
      },
      {
        'name': 'Presidential Inauguration',
        'date': '2021-01-20',
        'id': '53',
      },
    ];

    final theme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue[300],
      accentColor: Colors.red[300],
      canvasColor: Colors.white,
      backgroundColor: Colors.lightBlue,
      dividerColor: Colors.blueGrey,
      textTheme: ThemeData.dark().textTheme.copyWith(
            headline4: TextStyle(
              fontSize: 21.0,
            ),
            subtitle1: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
            headline5: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            headline6: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
      accentTextTheme: ThemeData.dark().accentTextTheme.copyWith(
            bodyText2: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
            headline6: TextStyle(
              fontSize: 21.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              fontSize: 21.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
    );

    eventsController.add(eventList);
    _launchURL(Map<String, String> event) async {
      String idString = event['id'];
      int id;
      try {
        id = int.parse(idString);
      } on FormatException {
        id = -1;
      }
      
      String url;
      if(id < 5 && id > 0){
        // Presidential debates
        url = 'https://www.nytimes.com/2019/10/11/us/politics/when-are-the-2020-presidential-debates.html';
      } else if (id >= 5 && id <= 15){
        // Democratic Primary Debates
        url = 'https://en.wikipedia.org/wiki/2020_Democratic_Party_presidential_debates#Schedule';
      } else if (id >= 20 && id <= 40){
        // Primaries and Caucuses
        url = 'https://www.usvotefoundation.org/vote/PrimaryElections.htm';
      } else {
        url = 'https://www.usa.gov/election-day';
      }
      
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

