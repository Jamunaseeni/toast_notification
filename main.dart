import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void showtoast() {
    Fluttertoast.showToast(
        msg: 'Hello My Toast Notification',
        textColor: Colors.black,
        timeInSecForIosWeb: 2,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.white10);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toast_Notification'),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            // ignore: deprecated_member_use
            child: RaisedButton(
              child: Text('Click Me Show'),
              color: Colors.yellow,
              onPressed: () => showtoast(),
            ),
          ),
        ),
      ),
    );
  }
}
