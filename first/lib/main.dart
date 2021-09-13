import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Size.infinite.height,
                width: 100.0,
                color: Colors.red[600],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow.withOpacity(0.6),
                  ),
                ]
              ),
              Container(
                height: Size.infinite.height,
                width: 100.0,
                color: Colors.blue[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}