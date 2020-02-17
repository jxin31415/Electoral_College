import 'package:flutter/material.dart';

class Candidates extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            centerTitle: true,
            title: Text("Meet the Candidates"),
            backgroundColor: Colors.transparent,
            flexibleSpace: Image(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
            ),
         ),
        ),
      
        body: loadCandidates(),
      )
    );
  } 

  Widget loadCandidates() {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: <Widget>[
        ListTile(
          title: Container(
            height: 50,
            color: Colors.lightBlue,
            child: const Center(child: Text('Democratic Candidates')),
          ),
        ),
        ListTile(
         title: SizedBox(height: 20),
        ),
        ListTile(
          title: generateCandidate('assets/biden.png', "Joe Biden"),
        ),
        ListTile(
          title: generateCandidate('assets/sanders.png', "Bernie Sanders"),
        ),
        ListTile(
          title: generateCandidate('assets/warren.png', "Elizabeth Warren"),
        ),
        ListTile(
          title: generateCandidate('assets/buttigieg.png', "Pete Buttigieg"),
        ),
        ListTile(
          title: generateCandidate('assets/bloomberg.png', "Michael Bloomberg"),
        ),
        ListTile(
          title: generateCandidate('assets/steyer.png', "Tom Steyer"),
        ),
        ListTile(
         title: SizedBox(height: 20),
        ),
        ListTile(
          title: Container(
            height: 50,
            color: Colors.red[200],
            child: const Center(child: Text('Republican Candidates')),
          ),
        ),
        ListTile(
         title: SizedBox(height: 20),
        ),
        ListTile(
          title: generateCandidate('assets/trump.png', "Donald Trump"),
        )

        //TO-DO
      ],
    );
  }

   Widget generateCandidate(String image, String candidate){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(candidate),
    );
  }
}