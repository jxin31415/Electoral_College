import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Trump extends StatelessWidget {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            centerTitle: true,
            title: Text('Donald Trump'),
            automaticallyImplyLeading: true,
            leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/trump_1.jpeg',
                              width: 150.0,
                              height: 150.0,
                            ),
                          ],
                        ),
                        Expanded(child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Donald Trump',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                'Republican Party',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                'Running mate: Mike Pence',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                softWrap: true,
                              ),
                              SizedBox(height:10),
                              Text(
                                'Current US President',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontStyle: FontStyle.italic,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                'and Businessman',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontStyle: FontStyle.italic,
                                ),
                                softWrap: true,
                              ),
                              SizedBox(height: 15),
                              RaisedButton(
                                  child: Text("Website"),
                                  color: Colors.red,
                                  splashColor: Colors.redAccent,
                                  onPressed: () {
                                    _launchURL("https://www.donaldjtrump.com/");
                                  }
                              ),
                            ],
                          ),
                        ),),
                      ],
                    ),
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ExpansionTile(
                        title: Text("Healthcare"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Trump pledges to undermine the Affordable Care Act and replace it during his second term. Trump requires that immigrant-visa applicants be able to obtain health insurance. He also declared the opioid crisis a nationwide public emergency, providing \$900 million in funds to overcome the crisis, and reduced the cost of prescription drugs."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Axios"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.axios.com/donald-trump-on-the-issues-in-under-500-words-0100222c-8b51-46a8-9f22-8a6edba6f75e.html ");
                              }
                          ),
                          RaisedButton(
                              child: Text("Promises Kept"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.promiseskept.com/achievement/overview/healthcare/# ");
                              }
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Education"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Trump's administration sought to decline access of information from the Consumer Financial Protection Bureau for federal student loan services. He also proposed budgets to prioritize public and private school choice and raise federal charter school grants."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Politico"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.politico.com/story/2019/05/16/student-loans-education-department-1447485 ");
                              }
                          ),
                          RaisedButton(
                              child: Text("Promises Kept"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.promiseskept.com/achievement/overview/education/ ");
                              }
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Taxes"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Under Trump's administration, Congress passed tax cuts and relief for 82% of the middle class through the Tax Cuts and Jobs Act. He also cut taxes for small businesses by 20%. By reducing taxes for more than 500 companies, these companies were able to provide bonuses."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Promises Kept"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.promiseskept.com/achievement/overview/economy-and-jobs/ ");
                              }
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Gun Reform"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Trump's goal is to create tools that can detect potential mass shooters online. He seeks to end the 'glorification of violence' in video games, reform mental health legislation, create red flag laws, and create a fast-tracking death penalties for extreme criminals -- terrorists and mass murderers."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("BBC"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL("https://www.bbc.com/news/world-us-canada-49227591 ");
                              }
                          )
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Reproductive Rights"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Trump created legislature limiting access to safe abortions for women. His Global Gag Rule demanded that US health care services abroad refuse to provide abortion services and refuse to refer to abortion as a safe family-planning method."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Reproductive Rights"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL("https://reproductiverights.org/Trump-Administration-Strip-Mention-Reproductive-Health-Rights-State-Department");
                              }
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Environment/Climate"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("During his first term, Trump withdrew the U.S. from the Paris Climate Accord, believing that it was an unfair agreement. He approved construction of the Keystone XL and Dakota Access pipelines, generating 42,0000 jobs. However, he also repealed the Clean Power Plan, which is estimated to raise energy costs up to \$1 million. Trump also signed an executive order increasing leases for offshore drilling."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Promises Kept"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.promiseskept.com/achievement/overview/energy-and-environment/ ");
                              }
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Immigration"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("During his presidency Trump sought to build the southern border wall, end the DACA program, and implement strict immigration restrictions in order to lower illegal immigration as stated in his \"zero-tolerance\" policy. He banned travel from several Muslim countries and called a national emergency to gather funding to build the Mexican border wall."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Politico"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.politico.com/news/2020/02/15/immigration-infrastructure-week-trump-administration-114913 ");
                              }
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

            ),
          ],
        ),
    );
  }
}
