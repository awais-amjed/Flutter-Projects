import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function toggleCheckBox;
  final Function deleteTask;

  TaskTile({this.title, this.isChecked, this.toggleCheckBox, this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: deleteTask,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: toggleCheckBox,
        ),
      ),
    );
  }
}
