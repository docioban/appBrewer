import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/tasks.dart';
import 'package:todolist/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (BuildContext context, task, Widget child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              task.tasks[index].text,
              task.tasks[index].isCheck,
              index: index,
            );
          },
          itemCount: task.tasks.length,
        );
      },
    );
  }
}
