import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _tasks = [
    Task(text: 'Buy milk'),
    Task(text: 'Buy eggs'),
    Task(text: 'Buy detergent', isCheck: true),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void toggleTask(int index) {
    _tasks[index].toggle();
    notifyListeners();
    // print(index);
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeAt(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
