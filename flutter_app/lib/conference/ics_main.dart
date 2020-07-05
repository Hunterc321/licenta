import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/conference/program/ics_program.dart';
import 'package:flutterapp/conference/ics_drawer.dart';

class icsMain extends StatefulWidget {
  @override
  _icsMainState createState() => _icsMainState();
}

final String home = 'asset/bottommenuhomeicon.svg';
final String calendar = 'asset/bottommenumycalendaricon.svg';
final String search = 'asset/bottommenusearchicon.svg';
final String profile = 'asset/user-icon-form.svg';
final String logoAppbar = 'asset/Logo-ICSTCC-2020-secondary.svg';
final String dashProgram = 'asset/dashboard-program-icon.svg';
final String dashAbout = 'asset/dashboard-about-ICSTCC-icon.svg';
final String dashAnalytics = 'asset/dashboard-analytics-icon.svg';
final String dashContact = 'asset/dashboard-contact-us-icon.svg';
final String dashLocation = 'asset/dashboard-location-icon.svg';
final String dashCalendar = 'asset/dashboard-mycalendar-icon.svg';
final String dashNewsFeed = 'asset/dashboard-newsfeed-icon.svg';
final String dashPapers = 'asset/dashboard-papers-icon.svg';
final String dashParticipants = 'asset/dashboard-participants-icon.svg';
final String dashTickets = 'asset/dashboard-ScanTicket-icon.svg';
final String dashSpeakers = 'asset/dashboard-speakers-icon.svg';
final String dashWritePost = 'asset/dashboard-writepost-icon.svg';

class _icsMainState extends State<icsMain> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

        appBar: AppBar(
          title: SvgPicture.asset(
            logoAppbar,
            height: 40,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue),
          actions: <Widget>[
            Stack(
              children: <Widget>[
                new IconButton(icon: Icon(Icons.notifications))
              ],
            )
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
        drawer: MyDrawer(),
        backgroundColor: Colors.white,
        body: Column(

          children: <Widget>[
            Stack(

              children: <Widget>[
                Container(height: screenHeight/3.5,width: screenWidth,
                    child: Image.asset("asset/dashboard_city.jpg",fit: BoxFit.fill,)),
                Positioned(bottom: screenHeight/30,left: screenWidth/10,
                    child: Container(width:screenWidth/1.5,child: Text("24th International Conference on System Theory Control and Computing 2020 ",style: TextStyle(color: Colors.white,fontSize: screenHeight/50,fontWeight: FontWeight.bold),)))

              ],

            ),
            _buildTable(context),
          ],
        )
        );
  }
}


Widget _buildColumn(BuildContext context) {
  var screenHeight = MediaQuery.of(context).size.height;
  var screenWidth = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.all(screenHeight/40),
    color: Colors.red,
    height: screenHeight/2,
    width: screenWidth,
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Program()),
                )
              },
              child: Container(
                height: screenHeight/10,
                width: screenWidth/5,

                decoration: _buildroundItems(),
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset(dashProgram),
                    Text("Program")
                  ],
                ),
              ),
            ),
            SizedBox(width: screenWidth/20,),
            Container(
              height: screenHeight/10,
              width: screenWidth/5,
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashSpeakers),
                  Text("Speakers")
                ],
              ),
            ),
            SizedBox(width: screenWidth/20,),
            Container(
              height: screenHeight/10,
              width: screenWidth/5,
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashPapers),
                  Text("Papers")
                ],
              ),
            ),
            ]),
        SizedBox(height: screenHeight/40,),
            Row(
              children: <Widget>[
                Container(
                  height: screenHeight/10,
                  width: screenWidth/5,
                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashNewsFeed),
                      Text("News Feed")
                    ],
                  ),
                ),
                SizedBox(width: screenWidth/20,),
                Container(
                  height: screenHeight/10,
                  width: screenWidth/5,
                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashCalendar),
                      Text("My Calendar")
                    ],
                  ),
                ),
                SizedBox(width: screenWidth/20,),
                Container(
                  height: screenHeight/10,
                  width: screenWidth/5,
                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashParticipants),
                      Text("Participants")
                    ],
                  ),
                ),
              ],
            ),
        SizedBox(height: screenHeight/40,),
            Row(
              children: <Widget>[
                Container(
                  height: screenHeight/10,
                  width: screenWidth/5,
                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashAbout),
                      Text("About ICSTCC")
                    ],
                  ),
                ),
                SizedBox(width: screenWidth/20,),
                Container(
                  height: screenHeight/10,
                  width: screenWidth/5,
                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashContact),
                      Text("Contact Us")
                    ],
                  ),
                ),
                SizedBox(width: screenWidth/20,),
                Container(
                  height: screenHeight/10,
                  width: screenWidth/5,
                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashProgram),
                      Text("NO DATA")
                    ],
                  ),
                ),

              ],
            ),
        SizedBox(height: screenHeight/40,),
        Row(children: <Widget>[
          Container(
            height: screenHeight/10,
            width: screenWidth/5,
            decoration: _buildroundItems(),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashTickets),
                Text("Scan Tickets")
              ],
            ),
          ),
          SizedBox(width: screenWidth/20,),
          Container(
            height: screenHeight/10,
            width: screenWidth/5,
            decoration: _buildroundItems(),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashAnalytics),
                Text("Analytics")
              ],
            ),
          ),
          SizedBox(width: screenWidth/20,),
          Container(
            height: screenHeight/10,
            width: screenWidth/5,
            decoration: _buildroundItems(),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashWritePost),
                Text("Write Post")
              ],
            ),
          ),





        ],)
          ],
        )


  );
}


Widget _buildTable(BuildContext context)
{
  var screenHeight = MediaQuery.of(context).size.height;
  var screenWidth = MediaQuery.of(context).size.width;
  return Container(

    padding: EdgeInsets.only(left: screenWidth/20,top: screenHeight/25),

    child: Table(

      children: [
        TableRow(
            children: [
              Padding(
                padding:  EdgeInsets.only(right: screenWidth/20,bottom: screenWidth/20),
                child: InkWell(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Program()),
                    )
                  },
                  child: Container(
                    decoration: _buildroundItems(),
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(dashProgram),
                        Text("Program")
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: screenWidth/20),
                child: Container(

                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashSpeakers),
                      Text("Speakers")
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: screenWidth/25),
                child: Container(

                  decoration: _buildroundItems(),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(dashPapers),
                      Text("Papers")
                    ],
                  ),
                ),
              ),


            ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth/20,bottom: screenWidth/20),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashNewsFeed),
                  Text("News Feed")
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: screenWidth/20),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashCalendar),
                  Text("My Calendar")
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: screenWidth/25),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashParticipants),
                  Text("Participants")
                ],
              ),
            ),
          ),



        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth/20,bottom: screenWidth/20),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashAbout),
                  Text("About ICSTCC")
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: screenWidth/20),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashContact),
                  Text("Contact Us")
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenWidth/25),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashProgram),
                  Text("NO DATA")
                ],
              ),
            ),
          ),

        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth/20),
            child: Container(

              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashTickets),
                  Text("Scan Tickets")
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: screenWidth/20),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashAnalytics),
                  Text("Analytics")
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenWidth/25),
            child: Container(
              decoration: _buildroundItems(),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(dashWritePost),
                  Text("Write Post")
                ],
              ),
            ),
          ),



        ])

      ],


    ),
  );
}
Widget _buildBottomNavigationBar(BuildContext context) {
  var screenHeight = MediaQuery.of(context).size.height;
  var screenWidth = MediaQuery.of(context).size.width;
  return BottomNavigationBar(
      currentIndex: 1,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(home), title: Text("Dashboard")),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              search,
            ),
            title: Text(
              "Search",
              style: TextStyle(color: Colors.black),
            )),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(calendar), title: Text("My calendar")),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(profile), title: Text("Profile"))
      ]);
}

BoxDecoration _buildroundItems() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.all(Radius.circular(20)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 3,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}
