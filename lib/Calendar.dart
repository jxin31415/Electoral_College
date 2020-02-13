import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class Calendar extends StatefulWidget {
  @override
  CalendarState createState() => CalendarState();
  }

class CalendarState extends State<Calendar> {
  DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            centerTitle: true,
            title: Text("Upcoming Elections and Events"),
            backgroundColor: Colors.transparent,
            flexibleSpace: Image(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
            ),
         ),
        ),
      
        body: generateCalendar(),
      )
    );
  } 

  Widget generateCalendar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          this.setState(() => _currentDate = date);
        },
        weekendTextStyle: TextStyle(
          color: Colors.red,
        ),
        thisMonthDayBorderColor: Colors.grey,
        customDayBuilder: (   /// you can provide your own build function to make custom day containers
          bool isSelectable,
          int index,
          bool isSelectedDay,
          bool isToday,
          bool isPrevMonthDay,
          TextStyle textStyle,
          bool isNextMonthDay,
          bool isThisMonthDay,
          DateTime day,
        ) {
            return null;
        },
        weekFormat: false,
        height: 420.0,
        selectedDateTime: _currentDate,
        daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
      ),
    );
  }
}