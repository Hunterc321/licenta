import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutterapp/login_screen.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 2,
        navigateAfterSeconds: new AfterSplash(),
        backgroundColor: Color.fromRGBO(34, 191, 213,1),
        title: new Text('Welcome In SplashScreen',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new Container( child: LoginScreen( backgroundColor1: Colors.white, backgroundColor2: Colors.white, highlightColor: Colors.blue, foregroundColor: Colors.black, logo: new SvgPicture.asset('asset/logo-login.svg'), ), ));
  }
}