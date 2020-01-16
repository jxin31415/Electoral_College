import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electoral College',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.lightBlue[100],
          appBar: AppBar(
            title: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.calendar_today)),
                Tab(icon: Icon(Icons.poll)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Upcoming Events")
              ),
              Center(
                child: Text("Meet the Candidates")
              ),
              Center(
                child: Text("Settings and Location")
              ),
            ],
          ),
        ),
      ),
    );
  }
}