import 'package:flutter/material.dart';

class DemCandidateTemplate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Democratic Candidates"), 
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blue,
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          )
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("Bernie Sanders",
                textScaleFactor: 3,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("The bee, of course, flies anyway because bees don't care what humans think is impossible. Yellow, black. Yellow, black. Yellow, black. Yellow, black. Ooh, black and yellow! Let's shake it up a little. Barry! Breakfast is ready! Ooming! Hang on a second. Hello? - Barry? - Adam? - Oan you believe this is happening? - I can't."),
            ),

            //TO-DO
          ],
        ),
       ),
    );
  } 
}