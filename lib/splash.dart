import 'dart:async';

import 'package:flutter/material.dart';
import 'package:htigraduation/Homepage.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    starttime();

  }
  starttime() async{
    return Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Homepage())));

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('Covid-19',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
                Text('(Corona Virus)',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                Text('Stay Safe',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ],
            ),
            Image( image: AssetImage('images/splash.png')),
          ],
        ),
      ),
    );
  }
}
