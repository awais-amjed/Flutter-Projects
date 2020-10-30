import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.tasks[index];
            return TaskTile(
              title: task.title,
              isChecked: task.isDone,
              toggleCheckBox: (checkBoxState) {
                taskData.toggleDone(index);
              },
              deleteTask: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
          padding: EdgeInsets.all(15),
        );
      },
    );
  }
}
