import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sanders extends StatelessWidget {
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
          title: Text('Bernie Sanders'),
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
                              'assets/bernie_sanders_1.png',
                              width: 150.0,
                              height: 150.0,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Bernie Sanders',
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
                                'U.S. Senator from Vermont',
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
                                    _launchURL("https://berniesanders.com ");
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
                                  child: Text("Sanders pledges to make healthcare a human right for all, including mental health care through his “Medicare for All” plan. He strives to eliminate medical care debt held by 79 million Americans by reforming bankruptcy laws to provide relief for those who are laden with debt."),

                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Feel the Bern"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://feelthebern.org/bernie-sanders-on-healthcare/");
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
                                child: Text("Sanders’s K12 plan is in favor of helping students of color or low-income communities, reinvesting in public schools, especially those in a crumbling state, and increasing pay for teachers. Sanders “College for All Act” plans to cancel all \$1.6 trillion of student loan debt, reduce interest rates on student loans, remove the requirement of applying for financial aid, and make colleges tuition-free by imposing taxes on Wall Street through the “Robin Hood Tax”."),
                              )
                            ]
                          ),
                          RaisedButton(
                              child: Text("Feel the Bern"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://feelthebern.org/bernie-sanders-on-education/ ");
                              }
                          )
                        ],
                      ),
                      ExpansionTile(
                        title: Text("Taxes"),
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text("Sanders plans to raise taxes for the top 0.1 percent of Americans that are wealthy and propose a hiking-estate tax for millionaires, consisting of a top rate of 77% for estates over \$1 billion. Those who have a net worth of over \$32 million should expect their taxes to rise. Raising taxes for the wealthy would help fund for “Medicare for All”, Sanders’s affordable housing, and universal childcare. Moreover, Sanders aims to eliminate tax loop-holes used by the wealthy to evade tax payments."),
                              )
                            ],
                          ),
                          RaisedButton(
                              child: Text("On the Issues"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://www.ontheissues.org/Economic/Bernie_Sanders_Tax_Reform.htm ");
                              }
                          ),
                          RaisedButton(
                              child: Text("Bernie's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://berniesanders.com/issues/tax-extreme-wealth/ ");
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
                                  child: Text("Sanders yearns to increase background checks for firearms and wants to take on the NRA for its rampant corruption. He believes in the complete eradication of the sale and distribution of assault rifles (which he believes citizens have no reason to obtain outside the military) and the prohibition of high-capacity ammunition magazines. Concomitant to gun control, Sanders strives to significantly improve mental health care."),

                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Bernie's Website"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://berniesanders.com/issues/gun-safety/");
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
                                  child: Text("Sanders seeks to codify the Roe v. Wade plan of making birth-control widely accessible over-the-counter and to ban abstinence-only sex education programs. Sanders also has on his agenda to fully fund “Planned Parenthood”, “Title X”, and other programs that improve women’s health rights through “Medicare-for-All”, availability of contraceptives, and access to safe abortions."),

                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Feel the Bern"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://feelthebern.org/bernie-sanders-on-womens-rights/ ");
                              }
                          ),
                          RaisedButton(
                              child: Text("Axios"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://www.axios.com/bernie-sanders-2020-presidential-election-factsheet-550499151-b823d3ce-63c7-4f41-8092-ac20a3f7294b.html ");
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
                                  child: Text("Sanders co-sponsored the 2019 Green New Deal Legislation and firmly believes that climate change is real and is caused by human activities such as drilling, fracking, and the burning of fossil fuels. Sanders works relentlessly to combat climate skeptics in Washington and speaks out against the Trump administration’s disassembling of the Environmental Protection Agency (EPA)  which plays a crucial role in informing the federal government of sea level rise and climate change."),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Feel the Bern"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://feelthebern.org/bernie-sanders-on-climate-change/ ");
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
                                  child: Text("Sanders stressed the need for immigration reform that will address the legal status of 11 million undocumented immigrants living in the United States. Sanders supports visa reform, the DREAM Act, increased border security, increased citizenship opportunities, and protecting guest workers and undocumented immigrants from labor exploitation. "),
                                )
                              ]
                          ),
                          RaisedButton(
                              child: Text("Feel the Bern"),
                              color: Colors.lightBlue,
                              splashColor: Colors.lightBlueAccent,
                              onPressed: (){
                                _launchURL("https://feelthebern.org/bernie-sanders-on-immigration/ ");
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
