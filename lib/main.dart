import 'package:back_button_press/nextpage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pop Scope',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void completed() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => NextPage()));
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), completed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Splash\nScreen',
          style: TextStyle(
            fontSize: 50.0,
            fontFamily: 'Cursive',
          ),
        ),
      ),
    );
  }
}
