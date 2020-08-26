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
      debugShowCheckedModeBanner: false,
      title: "Electoral College",
      home: Scaffold(
          body: generateArticle()
      ),
    );
  }

  Widget generateArticle(){
    return ListView(
      children: <Widget>[

        // Registering to Vote

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
                child: Text("Learn more about voter registration.",
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
                child: Text("Learn about your state's specific voting requirements.",
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
        ),





        // How to Vote

        SizedBox(height: 15),
        Card(
          color: Colors.blue[200],
          margin: EdgeInsets.all(20),
          child: Center(heightFactor: 2, child: Text(
            "How to Vote",
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
              title: Text("Voter ID Requirements"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Thirty-six states require voters to show some form of identification at polling locations. Many states require some form of photo identification like a driver's license, state-issued identification card, military ID, or tribal ID. Some states accept identification without photos like a bank statement. Each state has different laws. Click below to read more.")
                    ),
                  ],
                ),
                RaisedButton(
                    child: Text("NCSL"),
                    color: Colors.lightBlue,
                    splashColor: Colors.lightBlueAccent,
                    onPressed: (){
                      _launchURL("https://www.ncsl.org/research/elections-and-campaigns/voter-id.aspx");
                    }
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Polling Stations"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("A polling location is where voters go to cast their vote. A polling place is assigned to a voter based on their address. You should go to your assigned polling place. You will not be on the roster if you go to alternate locations. Make sure you check your polling place beforehand as it can change from election to election. ")
                    ),
                  ],
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Early Voting"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Early voting allows voters to cast their vote ahead of Election Day. This is useful for voters who have scheduling conflicts on Election Day. Many states have early voting, but click below to learn more about early voting in your state.")
                    ),
                  ],
                ),
                RaisedButton(
                    child: Text("NCSL"),
                    color: Colors.red,
                    splashColor: Colors.redAccent,
                    onPressed: (){
                      _launchURL("https://www.ncsl.org/research/elections-and-campaigns/early-voting-in-state-elections.aspx");
                    }
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Absentee Voting and Voting by Mail"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Absentee voting allows people to cast their vote via mail. In order to vote by mail, an absentee ballot has to be requested. A third of states require an excuse to be made in order for voters to be eligible for an absentee ballot. Absentee ballots are usually requested by citizens out of the country or people who are physically incapable of going to a polling station. Click below to learn more about absentee voting.")
                    ),
                  ],
                ),
                RaisedButton(
                    child: Text("NCSL"),
                    color: Colors.lightBlue,
                    splashColor: Colors.lightBlueAccent,
                    onPressed: (){
                      _launchURL("https://www.ncsl.org/research/elections-and-campaigns/absentee-and-early-voting.aspx");
                    }
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Voting Online"),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Voting online is not allowed for federal elections. You can vote by going to a polling station or casting an absentee ballot.")
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
                child: Text("Learn more about the voting process.",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
            RaisedButton(
                child: Text("usa.gov"),
                color: Colors.red,
                splashColor: Colors.redAccent,
                onPressed: (){
                  _launchURL("https://www.usa.gov/how-to-vote");
                }
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("Learn more about voting specifics in your state.",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
            ),
            RaisedButton(
                child: Text("vote.org"),
                color: Colors.lightBlue,
                splashColor: Colors.lightBlueAccent,
                onPressed: (){
                  _launchURL("https://www.vote.org/");
                }
            ),
          ],
        )


        //TO-DO
      ],
    );
  }
}
