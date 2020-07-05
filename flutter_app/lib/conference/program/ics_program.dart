import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutterapp/conference/ics_drawer.dart';
import 'package:flutterapp/conference/program/ics_timeline.dart';

class Program extends StatefulWidget {
  @override
  _ProgramState createState() => _ProgramState();
}

const colorBlue = const Color.fromRGBO(34, 191, 213, 1);
const colorGrey = const Color.fromRGBO(198, 198, 198, 1);

bool pressedUpcoming = true;
bool pressedCompleted = false;

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(height: 100,
          child: TabBarView(children: <Widget>[
           Container(child: _buildTimelineTile("09:30\nAM", context),height: 10,),
            _buildTimelineTile( "09:30\nAM",context),
            _buildTimelineTile( "09:30\nAM",context),




          ],),
        )
      ),
    );
  }
}

PreferredSizeWidget _buildAppBar(BuildContext context) {
  return AppBar(
    bottom: TabBar(
      tabs: <Widget>[
        Tab(
          child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: pressedUpcoming
                  ? boxDecorationNotPressed()
                  : boxDecorationPressed(),
              child: FlatButton(

                  child: Text("Day 1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)))),
        ),
        Tab(
          child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: pressedUpcoming
                  ? boxDecorationNotPressed()
                  : boxDecorationPressed(),
              child: FlatButton(

                  child: Text("Day 2",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)))),
        ),
        Tab(
          child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: pressedUpcoming
                  ? boxDecorationNotPressed()
                  : boxDecorationPressed(),
              child: FlatButton(

                  child: Text("Day 3",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)))),
        )
      ],
    ),
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
      "Program",
      style: TextStyle(color: Colors.black),
    ),
    actions: <Widget>[
      Stack(
        children: <Widget>[new IconButton(icon: Icon(Icons.notifications))],
      )
    ],
  );
}

BoxDecoration boxDecorationNotPressed() {
  return BoxDecoration(
      border: Border(bottom: BorderSide(color: colorGrey, width: 3)));
}

BoxDecoration boxDecorationPressed() {
  return BoxDecoration(
      border: Border(bottom: BorderSide(color: colorBlue, width: 3)));
}

TimelineTile _buildTimelineTile(
  String hour,BuildContext context
) {
  return TimelineTile(
    alignment: TimelineAlign.manual,
    lineX: 0.2,
    leftChild: Container(height: MediaQuery.of(context).size.height/4,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 0,
          ),
          Text(
            hour,
            style: TextStyle(
                color: colorGrey, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    rightChild: Card(child: ListTile(
      leading: Text("Salut"),
      title: Text("CUMETRE",style: TextStyle(fontWeight:FontWeight.bold ),),
      subtitle: Text("Ore "),
      
    ),),
  );
}
