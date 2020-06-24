import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class icsMain extends StatefulWidget {
  @override
  _icsMainState createState() => _icsMainState();
}

final String home = 'asset/bottommenuhomeicon.svg';
final String calendar = 'asset/bottommenumycalendaricon.svg';
final String search = 'asset/bottommenusearchicon.svg';
final String profile = 'asset/user-icon-form.svg';
final String logoAppbar = 'asset/Logo-ICSTCC-2020-secondary.svg';
final String dashProgram='asset/dashboard-program-icon.svg';
final String dashAbout='asset/dashboard-about-ICSTCC-icon.svg';
final String dashAnalytics='asset/dashboard-analytics-icon.svg';
final String dashContact='asset/dashboard-contact-us-icon.svg';
final String dashLocation='asset/dashboard-location-icon.svg';
final String dashCalendar='asset/dashboard-mycalendar-icon.svg';
final String dashNewsFeed='asset/dashboard-newsfeed-icon.svg';
final String dashPapers='asset/dashboard-papers-icon.svg';
final String dashParticipants='asset/dashboard-participants-icon.svg';
final String dashTickets='asset/dashboard-ScanTicket-icon.svg';
final String dashSpeakers='asset/dashboard-speakers-icon.svg';
final String dashWritePost='asset/dashboard-writepost-icon.svg';


class _icsMainState extends State<icsMain> {
  @override
  Widget build(BuildContext context) {
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
            children: <Widget>[new IconButton(icon: Icon(Icons.notifications))],
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      drawer: _buildDrawer(context),
      backgroundColor: Colors.white,
      body: Container(height: MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width ,
      child: GridView.count(primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashProgram),
                Text("Program")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashSpeakers),
                Text("Speakers")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashPapers),
                Text("Papers")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashNewsFeed),
                Text("News Feed")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child:Column(
              children: <Widget>[
                SvgPicture.asset(dashCalendar),
                Text("My Calendar")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child:Column(
              children: <Widget>[
                SvgPicture.asset(dashParticipants),
                Text("Participants")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashAbout),
                Text("About ICSTCC")
              ],
            ),

          ),

          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashContact),
                Text("Contact Us")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child:Column(
              children: <Widget>[
                SvgPicture.asset(dashProgram),
                Text("NO DATA")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashTickets),
                Text("Scan Ticket")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashAnalytics),
                Text("Analytics")
              ],
            ),

          ),
          Container(
            decoration: _buildroundItems(),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(dashWritePost),
                Text("Write Post")
              ],
            ),

          ),
        ],),
      ),
    );
  }
}

Widget _buildBottomNavigationBar() {
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

Widget _buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Drawer Header'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );

}
BoxDecoration _buildroundItems()
{
  return BoxDecoration(color: Colors.white,
      border: Border.all(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}