import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutterapp/conference/ics_drawer.dart';
import 'package:flutterapp/conference/program/ics_program.dart';

class TimeLine extends StatefulWidget {

  String hour;
  TimeLine(String hour)
  {
    this.hour=hour;
  }


  @override
  _TimeLineState createState() => _TimeLineState();

}

class _TimeLineState extends State<TimeLine> {

  @override
  Widget build(BuildContext context) {
    return Material(
     /* child: TimelineTile(
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
      )*/
    );



  }
}
