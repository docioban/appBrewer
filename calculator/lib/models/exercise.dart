import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class Exercise extends ChangeNotifier {
  String _description; // pe deplin
  String _result; // numai rezultatul
  List<TextSpan> rez;

  Exercise() {
    _description = '';
    _result = '';
    rez = [];
  }

  void setDescription(String description) {
    _description = description;
  }

  String getResult() {
    return _result;
  }

  String getDescription() {
    return _description;
  }

  void calc(String text) {
    switch (text) {
      case 'AC':
        _description = '';
        _result = '';
        break;
      case '+-':
        if (_description.length > 0) {
          if (_description[0] == '-') {
            _description = _description.substring(1, _description.length);
          } else {
            _description = '-' + _description; // error
          }
          _result = calcRes(_description);
        }
        break;
      case 'R':
        if (_description.length > 0) {
          _description = _description.substring(0, _description.length - 1);
          _result = calcRes(_description);
        }
        break;
      case '=':
        _result = calcRes(_description);
        _description = '';
        break;
      case '%':
        break;
      case '.':
        _description += '.';
        break;
      default:
        _description = _description + text;
        _result = calcRes(_description);
        break;
    }
    getRichDescription();
    notifyListeners();
  }

  String calcRes(String text) {
    List<String> params = [];
    if (text.contains('+')) {
      params = text.split('+');
      if (params.length != 2 || params.contains('') == true) {
        return '';
      }
      double rez1 = double.parse(params[0]) + double.parse(params[1]);
      int rez2 = (int.tryParse(params[0]) ?? 0) + (int.tryParse(params[1]) ?? 0);
      return (rez1 == rez2 ? rez2 : rez1).toString();
    } else if (text.contains('-')) {
      params = text.split('-');
      if (params.length != 2 || params.contains('') == true) {
        return '';
      }
      double rez1 = double.parse(params[0]) - double.parse(params[1]);
      int rez2 = (int.tryParse(params[0]) ?? 0) - (int.tryParse(params[1] ?? 0));
      return (rez1 == rez2 ? rez2 : rez1).toString();
    } else if (text.contains('/')) {
      params = text.split('/');
      if (params.length != 2 || params.contains('') == true) {
        return '';
      }
      return (double.parse(params[0]) / double.parse(params[1])).toString();
    } else if (text.contains('x')) {
      params = text.split('x');
      if (params.length != 2 || params.contains('') == true) {
        return '';
      }
      double rez1 = double.parse(params[0]) * double.parse(params[1]);
      int rez2 = (int.tryParse(params[0]) ?? 0) * (int.tryParse(params[1] ?? 0));
      return (rez1 == rez2 ? rez2 : rez1).toString();
    } else
      return '';
  }

  void getRichDescription() {
    rez = [];
    String buffer = '';
    for (int i = 0; i < _description.length; i++) {
      if (isNumeric(_description[i])) {
        buffer += _description[i];
      } else {
        rez.add(TextSpan(text: buffer));
        buffer = '';
        rez.add(TextSpan(
            text: ' ${_description[i]} ',
            style: TextStyle(color: darkRedColor)));
      }
    }
    rez.add(TextSpan(text: buffer));
    notifyListeners();
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    } else if (s == '.') {
      return true;
    }
    return double.tryParse(s) != null ? true : false;
  }
}
