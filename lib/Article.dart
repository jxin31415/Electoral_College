import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article extends StatelessWidget {

  Future<void>_launchURL(String url) async {
    if (await canLaunch(url)){
      await launch(url);
    }else{
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        // appBar: AppBar(
            
        // ),
          body: generateArticle()
      ),
    );
  }

  Widget generateArticle(){
    return ListView(
      children: <Widget>[
        SizedBox(height: 15),
        Card(
          color: Colors.blue[200],
          margin: EdgeInsets.all(20),
          child: Center(heightFactor: 2, child: Text(
              "How to Register to Vote",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),),

        ),
        SizedBox(height: 15),
        new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            ExpansionTile(
              title: Text("Register Online"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child:Text("Online voter registration is a more modern way of registering voters and replaces the more traditional paper registration forms. As of June 2020, 39 states plus the District of Columbia allow online voter registration. Applicants must submit a form of valid identification like a driver's license or state-issued identification card. Online voter registration also implements advanced security measures to ensure that applicants' data is not stolen."),
                    ),
                  ],
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Register by Mail"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child:Text("To register to vote by mail, you must fill out the National Mail Voter Registration Form. Each state has their own specific instructions for registering this way. Once the form has been filled out, it can be mailed to a state or local election office."),
                    ),
                  ],
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Register in Person"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child:Text("Voters can also be registered in person at a state or local election office. In certain cases, they can also register at the department of motor vehicles, armed forces recruitment centers, and state and county public assistance offices. Each area and facility has their own requirements so be sure to check with your local office first."),
                    ),
                  ],
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Register Overseas"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child:Text("If you are a U.S. citizen living outside the U.S., a service member stationed overseas, or a spouse or family member of a service member stationed overseas, you can register to vote and request a ballot form."),
                    ),
                  ],
                ),
              ],
            ),
            ],
        ),
        new Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Go to usa.gov to learn more about voter registration.",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            RaisedButton(
              child: Text("usa.gov"),
              color: Colors.lightBlue,
              splashColor: Colors.lightBlueAccent,
              onPressed: (){
                _launchURL("https://www.usa.gov/register-to-vote");
              }
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("Go to vote.gov to learn about your state's specific voting requirements.",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
            ),
            RaisedButton(
                child: Text("vote.gov"),
                color: Colors.red,
                splashColor: Colors.redAccent,
                onPressed: (){
                  _launchURL("https://vote.gov/");
                }
            ),
          ],
        )


        //TO-DO
      ],
    );
  }
}
