import 'package:flutter/material.dart';

class Task {
  bool isCheck;
  String text;

  Task({this.isCheck = false, this.text});

  toggle() {
    isCheck = !isCheck;
  }
}
