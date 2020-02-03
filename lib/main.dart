import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electoral College',
      theme: ThemeData(
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.purple[100],
          appBar: AppBar(
            title: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.calendar_today)),
                Tab(icon: Icon(Icons.poll)),
                Tab(icon: Icon(Icons.location_on)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
            flexibleSpace: Image(
              image: AssetImage('assets/background.png'),
               fit: BoxFit.cover,
            ),
            backgroundColor: Colors.transparent,
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Upcoming Events")
              ),
              Center(
                child: loadCandidates()
              ),
              Center(
                child: Text("Where can I vote?")
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

  Widget loadCandidates() {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('In the Spotlight')),
        ),
        Container(
          height:20,
        ),
        generateCandidate('assets/spotlight.png', "To be decided"),
        Container(
          height:40,
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('List of Candidates')),
        ),
        Container(
          height:20,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: generateCandidate('assets/biden.png', "Joe Biden"),
            ),
            Container(
              width: 5,
            ),
            Expanded(
              child: generateCandidate('assets/sanders.png', "Bernie Sanders"),
            ),
            Container(
              width: 5,
            ),
            Expanded(
              child: generateCandidate('assets/warren.png', "Elizabeth Warren"),
            ),
          ],
        ),
        Container(
          height:20,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: generateCandidate('assets/buttigieg.png', "Pete Buttigieg"),
            ),
            Container(
              width: 5,
            ),
            Expanded(
              child: generateCandidate('assets/bloomberg.png', "Michael Bloomberg"),
            ),
            Container(
              width: 5,
            ),
            Expanded(
                child: generateCandidate('assets/steyer.png', "Tom Steyer"),
            ),
          ],
        ),
      ],
    );
  }

  Widget generateCandidate(String image, String candidate){
    return Column(
      children: <Widget>[
        FittedBox(
          fit: BoxFit.contain, // otherwise the logo will be tiny
          child: Image(
            image: AssetImage(image)
          ),
        ),
        Text(candidate),
      ],
    );
  }
}