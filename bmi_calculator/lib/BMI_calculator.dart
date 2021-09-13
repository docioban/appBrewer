import 'package:flutter/material.dart';

class BMIcalculator {
  BMIcalculator({@required this.height, @required this.weight}) {
    _bmi = weight / (height * height);
  }

  final int weight;
  final double height;
  double _bmi;

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underwight';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'You have a higher then normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower then normal body weight. You can eat a bit more.';
    }
  }
}
