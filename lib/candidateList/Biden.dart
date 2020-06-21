import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Biden extends StatelessWidget {
  Future<void>_launchURL(String url) async {
    if (await canLaunch(url)){
      await launch(url);
    }else{
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Joe Biden'),
            automaticallyImplyLeading: true,
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
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
                          children:<Widget>[
                            Image.asset(
                              'assets/biden_1.jpg',
                              width: 150.0,
                              height: 150.0,
                            ),
                          ],
                        ),
                        Expanded(child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Joe Biden',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                'Democratic Party',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                'Running mate: Undecided',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                softWrap: true,
                              ),
                              SizedBox(height:10),
                              Text(
                                'Former U.S. Vice President',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontStyle: FontStyle.italic,
                                ),
                                softWrap: true,
                              ),
                              SizedBox(height: 15),
                              RaisedButton(
                                  child: Text("Website"),
                                  color: Colors.lightBlue,
                                  splashColor: Colors.lightBlueAccent,
                                  onPressed: (){
                                    _launchURL("https://joebiden.com/");
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
                                  child:Text("Biden plans on building on the Affordable Care Act by letting Americans have the choice to switch to public health insurance(like Medicare), lowering costs of healthcare, creating a premium tax credit, lowering drug costs, guaranteeing medical attention as a right for all Americans, and simplifying the healthcare system."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Biden's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://joebiden.com/healthcare/");
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
                                  child: Text("Joe Biden plans to support educators with higher wages and more benefits, provide student resources(including mental health care), provide financial aid, adopt gun reform, and to support every child without discrimination."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Biden's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://joebiden.com/education/");
                              }
                          ),
                          RaisedButton(
                              child: Text("Biden's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://joebiden.com/beyondhs/");
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
                                  child: Text("Joe Biden plans to tax millionaires and corporations more and prohibit corporations from announcing false profits as well as ending stepped-up in basis. Stepped-up in basis is when an asset is passed on to someone else (usually due to inheritance) -- the profits that are taxed are not based on what it was initially bought for, but what it was valued at the time of inheritance (which means less reported profit, which means less taxes paid). "),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Vox"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://www.vox.com/policy-and-politics/2019/12/5/20995225/joe-biden-tax-plan");
                              }
                          ),
                          RaisedButton(
                              child: Text("The Balance"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://www.thebalance.com/what-is-stepped-up-basis-3505604");
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
                                  child: Text("Joe Biden plans to make gun manufacturers responsible for the weapons they sell, ban assault weapons of high capacity, fund background checks, prevent domestic abuse that utilizes guns, close loopholes, and work with urban communities to keep our homes safe. To help survivors, Biden will also work with health professionals on trauma-based care."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Biden's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://joebiden.com/gunsafety/");
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
                                  child: Text("Joe Biden supports Roe v Wade, even if he supports the Hyde Amendment, which bans the use of tex dollars to pay for abortions other than in life-threatening cases or if the pregnancy arises from rape or incest."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("NBC"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://www.nbcnews.com/politics/2020-election/biden-s-long-evolution-abortion-rights-still-holds-surprises-n1013846");
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
                                  child: Text("Joe Biden’s Clean Energy Revolution promises a completely clean economy(0 net emissions) by 2050, more modern, resilient infrastructure, US re-entry into the Paris Climate Agreement, punishments for polluters, and help for disadvantaged communities."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Biden's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://joebiden.com/climate/");
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
                                  child: Text("Joe Biden plans to undo Trump's actions by supporting border security, screening, and modernization of the immigration system, assimilating and welcoming immigrants into the US, and addressing the causes of immigration."),                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Biden's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://joebiden.com/immigration/");
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