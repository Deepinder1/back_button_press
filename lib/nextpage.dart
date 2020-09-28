import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  //create current date time objec
  DateTime current;

  //create a func which return a future bool bcoz willpop accepts future bool
  Future<bool> popped() async {
    DateTime now = DateTime.now();
    if (current == null || now.difference(current) > Duration(seconds: 2)) {
      current = now;
      //to show toast
      Fluttertoast.showToast(
        backgroundColor: Colors.black,
        msg: 'Press back again to Exit',
        toastLength: Toast.LENGTH_SHORT,
      );
      return Future.value(false);
    } else {
      Fluttertoast.cancel();
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => popped(),
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text(
            'Next\n Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontFamily: 'Times New Roman',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
