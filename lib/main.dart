import 'dart:async';

import 'package:flutter/material.dart';
import 'package:htigraduation/Homepage.dart';
import 'package:htigraduation/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFFD7D6D6),
        primaryColor: Color(0xFF263238),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFD7D6D6),
        body: splash()
      ),
    );
  }
}


