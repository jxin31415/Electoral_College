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
                        Expanded(
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
                                'Former U.S. Vice President',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                softWrap: true,
                              ),
                              Text(""),
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

                        ),


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
                                  child:Text("Biden plans on building on the Affordable Care Act by giving Americans more choice, reducing health care costs, extending tax dollars for lower premiums, reducing drug prices, and making our health care system less complex."),
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
                                  child: Text("Joe Biden plans to support educators with competitive wages and benefits, giving students the resources they need like health professionals for mental health care, financial aid, infrastructure safety, and gun reform, and to support every child with no discrimination. Biden will fund community colleges and colleges of importance to our communities and make college a more reliable option. "),
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
                                  child: Text("Joe Biden plans to tax millionaires and corporations more and prevent corporations from reporting false profits as well as ending stepped-up in basis. Stepped-up in basis is when an asset is passed on to someone else (usually due to inheritance) -- the profits that are taxed are not based on what it was initially bought for, but what it was valued at the time of inheritance (which means less reported profit, which means less taxes paid). "),
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
                                  child: Text("Joe Biden plans to hold gun manufacturers accountable, ban assault weapons of high capacity, close loopholes, fund background check systems, prevent domestic abuse that utilizes guns, and work with urban communities to keep our homes safe. To help survivors, Biden will also work with health professionals on trauma-based care."),
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
                                  child: Text("Joe Biden supports Roe v Wade, even if he supports the Hyde Amendment, which bans the use of tex dollars to pay for abortions other than in life-threatening cases or if the preganancy arises from rape or incest."),
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
                                  child: Text("Joe Biden’s Clean Energy Revolution promises a 100% clean economy with zero net emissions by 2050, building a more resilient nation through cleaner and resilient infrastructure and communities, rejoining the Paris Climate Agreement and rallying the rest of the world against climate change, holding polluters accountable, and helping low income or communities of color that are disproportionately affected."),
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
                                  child: Text("Joe Biden plans to undo the actions of Trump’s immigration system by investing in border security and border screening and modernizing our immigration system for refugees and asylum-seekers, welcoming and integrating immigrants into our communities, and addressing the violence, instability, and loack of opportunity that causes immigration."),
                                )
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