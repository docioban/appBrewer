import 'package:calculator/constants.dart';
import 'package:calculator/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExerciseText extends StatelessWidget {
  final bool isDark;

  ExerciseText({this.isDark});

  @override
  Widget build(BuildContext context) {
    return Consumer<Exercise>(
      builder: (context, value, child) {
        return RichText(
          maxLines: 1,
          text: TextSpan(
            style: TextStyle(fontSize: 30.0, color: isDark ? darkTextColor : lightTextColor),
            children: value.rez,
          ),
        );
      },
    );
  }
}
