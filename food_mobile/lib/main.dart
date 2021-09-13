import 'package:flutter/material.dart';
import 'package:food_mobile/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconFirstScreenTop(icon: Icons.share),
              IconFirstScreenTop(icon: Icons.search),
            ],
          ),
        ),
      ),
    );
  }
}

class IconFirstScreenTop extends StatelessWidget {
  final IconData? icon;

  IconFirstScreenTop({this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: textColor,
        size: 30.0,
      ),
    );
  }
}
