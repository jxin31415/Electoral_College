import 'package:flutter/material.dart';
import 'candidateList/Biden.dart';
import 'candidateList/Sanders.dart';
import 'candidateList/Trump.dart';

class Candidates extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
          title: generateCandidate('assets/biden_2.jpg', "Joe Biden"),
          onTap: (){
            if(Navigator != null){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> Biden())
              );
            }
          },
        ),
         
        // DROPPED OUT
        // ListTile(
        //   title: generateCandidate('assets/bernie_sanders_2.jpg', "Bernie Sanders"),
        //   onTap: (){
        //     if(Navigator != null){
        //       Navigator.push(context, MaterialPageRoute(
        //         builder: (context)=> Sanders())
        //       );
        //     }
        //   },
        // ),
        ListTile(
         title: SizedBox(height: 20),
        ),
        ListTile(
          title: Container(
            height: 50,
            color: Colors.red[300],
            child: const Center(child: Text('Republican Candidates')),
          ),
        ),
        ListTile(
          title: generateCandidate('assets/trump_2.jpg', "Donald Trump"),
          onTap: (){
            if(Navigator != null){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> Trump())
              );
            }
          },
        ),
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