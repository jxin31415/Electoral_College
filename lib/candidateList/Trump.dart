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
                        Expanded(
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
                                'President of the U.S.',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                'and Businessman',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                softWrap: true,
                              ),
                              Text(""),
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

                        ),


                      ],
                    ),
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ExpansionTile(
                        title: Text("Vice President"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Trump's vice president is Michael R. Pence. Prior to becoming vice president, Pence was a member of the U.S. House of Representatives for Indiana from 2001 to 2013 and served as the 50th governor of Indiana from 2013 to 2017. In addition, he served as the Chairman of the House Republican Study Committee and House Republican Conference Chairman."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Read More"),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {
                                _launchURL(
                                    "https://www.whitehouse.gov/people/mike-pence/");
                              }
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Healthcare"),
                        children: <Widget>[
                          Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Trump pledges to undermine the Affordable Care Act and replace it after the 2020 elections. Moreover, Trump requires that immigrant-visa applicants have the means to obtain health insurance. During his presidency, he declared the opioid crisis a public nationwide emergency and provided \$900 million in funding to overcome the opioid crisis and reduced the cost of prescription drugs."),
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
                                  child: Text("Trump’s administration requested for the federal student loan services to decline access of information from the Consumer Financial Protection Bureau. Trump also proposed budgets to make public and private school choice a priority and seeks to raise federal charter school grants. "),
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
                                  child: Text("Under Trump’s presidency, Congress passed tax cuts and relief for 82% of middle-class families through “The Tax Cuts and Jobs Act”. In addition, he cut taxes for small businesses by 20%. By alleviating the tax burden for 500+ companies, the companies were able to fund bonuses."),
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
                                  child: Text("Trump aims to devise tools to detect potential mass shooters online, call an end to the 'glorification of violence' in video games, reform mental health laws, legistlate red flag laws, and establish a fast-tracking death penalty for terrorists and mass murderers."),
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
                                  child: Text("Trump imposed a policy restricting access to safe abortion services for women. Trump’s Global Gag Rule demands that American international health care services abroad no longer spend their own money to provide legal abortion services, or even give out information that refers to safe abortion as a “method of family planning”. "),
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
                                  child: Text("During his presidency, Trump withdrew the U.S. from the Paris Climate Accord, believing that it was an unfair agreement. He approved the construction of the  Keystone XL and Dakota Access pipelines, which generated 42.000 jobs and repealed from the Clean Power Plan, estimated to increase energy costs to up to a million. Trump signed an executive order to increase the leases of offshore drilling. "),
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
                                  child: Text("During his presidency, Trump aspired to build the southern border wall, discontinue the DACA program,  and implement strict immigration restrictions to limit illegal immigration into the country as stated in his “zero-tolerance” policy. He established a travel ban on several Muslim countries and called a national emergency to gather federal funding to build the southern border wall. "),
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
