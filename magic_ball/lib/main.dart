import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask question"),
        backgroundColor: Colors.blue[900],
      ),
      body: BallAction(),
    );
  }
}

class BallAction extends StatefulWidget {
  @override
  _BallActionState createState() => _BallActionState();
}

class _BallActionState extends State<BallAction> {
  List<String> answards = [
    "Yes",
    "No",
    "Have no idea",
    "Don't know",
    "Evrifinc"
  ];

  @override
  Widget build(BuildContext context) {
    String word = answards[Random().nextInt(answards.length)];
    return Container(
      color: Colors.blue,
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              word = answards[Random().nextInt(answards.length)];
            });
          },
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.red[100],
            child: Center(
              child: Text(
                "$word",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red[300],
                ),
              ),
            ),
          ),
        ),
        // child: TextButton(
        //   onPressed: () {
        //     setState(() {
        //       index = Random().nextInt(5) + 1;
        //     });
        //   },
        //   child: Image.asset("images/ball$index.png"),
        // ),
      ),
    );
  }
}
