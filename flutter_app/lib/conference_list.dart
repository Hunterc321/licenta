import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConferenceList extends StatefulWidget {
  @override
  _ConferenceListState createState() => _ConferenceListState();
}
const colorBlue = const Color.fromRGBO(34, 191, 213, 1);
class _ConferenceListState extends State<ConferenceList> {

  final String icstPath='asset/ICSTCC-icon.svg';

  bool pressed=false;


  @override
  Widget build(BuildContext context) {
    return Material(type: MaterialType.transparency,
      child: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.centerLeft,
            end: new Alignment(
                1.0, 0.0), // 10% of the width, so there are ten blinds.
            colors: [Colors.white, Colors.white], // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[Padding(
          padding: const EdgeInsets.only(top:20.0,bottom:10 ),
          child: Container(
          height: 100.0,
          width: 100.0,
          child: new SvgPicture.asset(icstPath),

      ),
        ),
          Container(
            height: 80,
            width:MediaQuery.of(context).size.width ,
            child: Text("Choose Conference",style: TextStyle(color: colorBlue,fontSize: 30,fontFamily: "Montserrat",fontWeight: FontWeight.bold ),textAlign: TextAlign.center,
          ),),
          Container(height: 100,
              width:MediaQuery.of(context).size.width,
            decoration: boxDecorationNotPressed(),

          child:FlatButton(child: Text("Sal")



          )
          )




        ],


        ),


      ),
    );
  }
}

BoxDecoration boxDecorationNotPressed(){
  return BoxDecoration(border: Border(bottom: BorderSide(color: colorBlue,width: 3)));


}
