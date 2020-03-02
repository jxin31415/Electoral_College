import 'package:flutter/material.dart';
import 'candidateList/Biden.dart';
import 'candidateList/Bloomberg.dart';
import 'candidateList/Gabbard.dart';
import 'candidateList/Klobuchar.dart';
import 'candidateList/Sanders.dart';
import 'candidateList/Trump.dart';
import 'candidateList/Warren.dart';
import 'candidateList/Weld.dart';


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
      
        body: loadCandidates(context),
      )
    );
  } 

  Widget loadCandidates(BuildContext context) {
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
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Biden())
           );
          },
        ),
        ListTile(
          title: generateCandidate('assets/bloomberg.png', "Michael Bloomberg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Bloomberg())
           );
          },
        ),
        ListTile(
          title: generateCandidate('assets/gabbard.png', "Tulsi Gabbard"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Gabbard())
           );
          },
        ),
        ListTile(
          title: generateCandidate('assets/tulsi.png', "Amy Klobuchar"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Klobuchar())
           );
          },
        ),
        ListTile(
          title: generateCandidate('assets/sanders.png', "Bernie Sanders"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Sanders())
           );
          },
        ),
        ListTile(
          title: generateCandidate('assets/warren.png', "Elizabeth Warren"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Warren())
           );
          },
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
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Trump())
           );
          },
        ),
        ListTile(
          title: generateCandidate('assets/weld.png', "William Weld"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context)=> Weld())
           );
          },
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