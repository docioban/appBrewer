import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
          child: Column(
            children: [
              Text(
                'title',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 40.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
                onChanged: (value) {
                  text = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<Tasks>(context, listen: false).addTask(Task(text: text));
                  Navigator.pop(context);
                },
                child: Text('Add new Task'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
