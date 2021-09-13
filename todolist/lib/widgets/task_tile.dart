import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/tasks.dart';

class TaskTile extends StatelessWidget {
  TaskTile(this._text, this._isCheck, {this.index});

  final bool _isCheck;
  final String _text;
  final int index;
  // final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Provider.of<Tasks>(context, listen: false).removeAt(index);
      },
      title: Text(
        _text,
        style: TextStyle(
          fontSize: 18.0,
          decoration: _isCheck ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: _isCheck,
        onChanged: (bool value) {
          Provider.of<Tasks>(context, listen: false).toggleTask(index);
        },
      ),
    );
  }
}
