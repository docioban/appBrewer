import 'package:calculator/constants.dart';
import 'package:calculator/widgets/ButtonList.dart';
import 'package:calculator/widgets/DarkLightSwitch.dart';
import 'package:calculator/widgets/ExerciseText.dart';
import 'package:calculator/widgets/ResultText.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorWidgetState createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorScreen> {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? darkBackgroundColor : lightBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 10.0, left: 30.0, right: 30.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DarkLightSwitch(
                    isDark: isDark,
                    toggleFunction: () => setState(() => isDark = !isDark),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  ExerciseText(isDark: isDark),
                  ResultText(isDark: isDark)
                ],
              ),
            ),
            Expanded(
              child: ButtonList(isDark: isDark),
            ),
          ],
        ),
      ),
    );
  }
}
