import 'package:flutter/material.dart';

class Cell extends StatelessWidget {
  Cell({@required this.bgColor, this.childWidget, this.pres});

  final Color bgColor;
  final Widget childWidget;
  final Function pres;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pres,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor,
        ),
      ),
    );
  }
}
