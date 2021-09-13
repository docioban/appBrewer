import 'package:bmi_calculator/views/result.dart';
import 'package:flutter/material.dart';
import 'views/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0D21),
        primaryColor: Color(0xFF0A0D21),
      ),
      home: InputPage(),
    );
  }
}
