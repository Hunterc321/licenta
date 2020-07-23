
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutterapp/conference/ics_main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/conference/program/description_text_widget.dart';


class SessionDetails extends StatefulWidget {
  @override
  _SessionDetailsState createState() => _SessionDetailsState();
}

const colorBlue = const Color.fromRGBO(34, 191, 213, 1);
const colorPink = const Color.fromRGBO(92, 55, 129, 1);
const colorGrey = const Color.fromRGBO(198, 198, 198, 1);
final String addedCalendarPath = "asset/session_addedCalendar.svg";
final String addCalendarPath = "asset/session_addCalendar.svg";

class _SessionDetailsState extends State<SessionDetails> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    bool isPressed = false;

    _pressed() {
      var newVal = true;
      if (isPressed) {
        newVal = false;
      } else {
        newVal = true;
      }
      setState(() {
        isPressed = newVal;
      });
    }

    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: _buildBottomNavigationBar(context),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: screenHeight / 4,
                  width: screenWidth+100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [colorPink, colorBlue])),
                ),
                Positioned(
                    bottom: screenHeight / 10,
                    left: screenWidth / 10,
                    child: Container(
                        width: screenWidth / 1.1,
                        child: Text(
                          "Towards semantic Interoperability in the Internet of Things",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight / 30,
                              fontWeight: FontWeight.bold),
                        ))),
                Positioned(
                    bottom: screenHeight / 30,
                    left: screenWidth / 10,
                    child: Container(
                        width: screenWidth / 2.5,
                        height: screenHeight / 15,
                        child: Text(
                          "TEXT",
                          style: TextStyle(
                              color: colorGrey,
                              fontSize: screenHeight / 40,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ))),
                Positioned(
                    bottom: screenHeight / 30,
                    left: screenWidth / 1.7,
                    child: Container(
                        width: screenWidth / 5,
                        child: Text(
                          "Add to calendar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenHeight / 50,
                          ),
                        ))),
                Positioned(
                    bottom: screenHeight / 30,
                    left: screenWidth / 1.3,
                    child: Container(
                      width: screenWidth / 7,
                      child: GestureDetector(
                          onTap: () => _pressed(),
                          child: SvgPicture.asset(
                              isPressed ? addedCalendarPath : addCalendarPath)),
                    )),
              ],
            ),
            Container(width: screenWidth,padding: EdgeInsets.all(screenHeight/50),

              child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(

                        width: screenWidth/2.2,
                        decoration: BoxDecoration(
                            border: Border(right: BorderSide(color: Colors.grey))),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            "asset/location-icon-form.svg",
                            height: screenHeight / 20,
                          ),
                          title: Text(
                            "Location",
                            style: TextStyle(
                                color: colorGrey, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "George Enescu",
                            style: TextStyle(
                                color: Colors.black, fontSize: screenHeight / 60),
                          ),
                        ),
                      ),
                      Container(width: screenWidth/2.2,
                          child: ListTile(
                        leading: Text("IC"),
                        title: Text(
                          "Time",
                          style: TextStyle(
                              color: colorGrey, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "TIME TEXT",
                          style: TextStyle(
                              color: Colors.black, fontSize: screenHeight / 60),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.grey))),
                        width: screenWidth/2.2,
                          child: ListTile(
                            leading: Text("IC"),
                            title: Text(
                              "CHAIR",
                              style: TextStyle(
                                  color: colorGrey, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Crooked Moon",
                              style: TextStyle(
                                  color: Colors.black, fontSize: screenHeight / 60),
                            ),
                          )),
                      Container(width: screenWidth/2.2,
                          child: ListTile(
                            leading: Text("IC"),
                            title: Text(
                              "CO-CHAIR",
                              style: TextStyle(
                                  color: colorGrey, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Preperan Radu",
                              style: TextStyle(
                                  color: Colors.black, fontSize: screenHeight / 60),
                            ),
                          )),
                    ],
                  )


                ],
              ),
            ),
            Container(padding: EdgeInsets.all(screenHeight/60),
            child:Text("Description",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: screenHeight/30),) ,

            ),

            Container(child: DescriptionTextWidget(text: "sdasadfsdfsdafsdgagfsdgfdfdgsfdgsfsdgfdgsgfdsfgsddsaasdfasdfasdfasdd",)),



          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
      "Session Details",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    actions: <Widget>[
      Stack(
        children: <Widget>[new IconButton(icon: Icon(Icons.notifications))],
      )
    ],
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
/*
Widget _buildExpandedText(BuildContext context)
{
      return ExpandText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit risus pulvinar, hendrerit nisi quis, vehicula ante. Morbi ut diam elit. Praesent non justo sodales, auctor lacus id, congue massa. Duis ac odio dui. Sed sed egestas metus. Donec hendrerit velit magna. Vivamus elementum, nulla ac tempor euismod, erat nunc mollis diam, nec consequat nisl ex eu tellus. Curabitur fringilla enim at lorem pulvinar, id ornare tellus aliquam. Cras eget nibh tempor lacus aliquam rutrum.',
          textAlign: TextAlign.justify,);

}*/
