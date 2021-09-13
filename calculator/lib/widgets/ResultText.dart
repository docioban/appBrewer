import 'package:calculator/constants.dart';
import 'package:calculator/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultText extends StatelessWidget {
  final bool isDark;

  ResultText({this.isDark});

  @override
  Widget build(BuildContext context) {
    return Consumer<Exercise>(
      builder: (context, value, child) {
        return Text(
          // 'dfsf',
          value.getResult(),
          maxLines: 1,
          style: TextStyle(
            color: isDark ? darkTextColor : lightTextColor,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
