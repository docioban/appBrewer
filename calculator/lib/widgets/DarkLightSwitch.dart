import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class DarkLightSwitch extends StatelessWidget {
  DarkLightSwitch({this.isDark, this.toggleFunction});

  final bool isDark;
  final Function toggleFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isDark ? darkContainerBackground : lightContainerBackground,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.wb_sunny,
                  color: isDark ? darkinactiveTextColor : lightTextColor,
                ),
                onPressed: () {
                  if (isDark == true) {
                    toggleFunction();
                  }
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.monochrome_photos,
                  color: isDark ? darkTextColor : lightinactiveTextColor,
                ),
                onPressed: () => {if (isDark == false) toggleFunction()},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
