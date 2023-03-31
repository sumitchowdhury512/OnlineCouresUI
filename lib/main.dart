import 'dart:async';
import 'package:flutter/material.dart';
import 'package:online_courses/Contraints.dart';
import 'package:url_strategy/url_strategy.dart';
import 'Pages/Home_page.dart';
import 'Pages/Intro_and_SignIn_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styling.main,

      ),
      routes: {
      '/Sign-In' : (context) => signup(),
      '/Home'  : (context) => Mainscreen(),
      },
      home: splashscreen(),
    );
  }
}

//Splash Screen
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2), () => Navigator.of(context).pushNamedAndRemoveUntil('/Sign-In', (Route<dynamic> route) => false),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Styling.main2,
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/4,
              child: Image.asset("assets/images/img1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
