import 'package:calculator/constants.dart';
import 'package:calculator/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonList extends StatelessWidget {
  final bool isDark;

  ButtonList({this.isDark});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: isDark ? darkContainerBackground : lightContainerBackground,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30.0)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: 'AC',
                    textColor: isDark ? darkGreenColor : lightGreenColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '+-',
                    textColor: isDark ? darkGreenColor : lightGreenColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '%',
                    textColor: isDark ? darkGreenColor : lightGreenColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '/',
                    textColor: isDark ? darkRedColor : darkRedColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '7',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '8',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '9',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: 'x',
                    textColor: isDark ? darkRedColor : lightRedColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '4',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '5',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '6',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '-',
                    textColor: isDark ? darkRedColor : darkRedColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '1',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                      isDark: isDark,
                      text: '2',
                      textColor: isDark ? darkTextColor : lightTextColor),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '3',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '+',
                    textColor: isDark ? darkRedColor : darkRedColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: 'R',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '0',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '.',
                    textColor: isDark ? darkTextColor : lightTextColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: MyButtonStyle(
                    isDark: isDark,
                    text: '=',
                    textColor: isDark ? darkRedColor : darkRedColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyButtonStyle extends StatelessWidget {
  final bool isDark;
  final String text;
  final Color textColor;

  MyButtonStyle({this.isDark, this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Provider.of<Exercise>(context, listen: false).calc(text);
      },
      style: TextButton.styleFrom(
          minimumSize: Size(0, 0),
          padding: EdgeInsets.zero,
          shadowColor: isDark ? darkBackgroundColor : lightBackgroundColor,
          elevation: 1.0,
          backgroundColor:
              isDark ? darkButtonBackgroundColor : lightButtonBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
