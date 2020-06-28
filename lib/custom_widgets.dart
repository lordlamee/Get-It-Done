import 'package:flutter/material.dart';
import 'package:getitdone/task_data.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              todo: taskData.tasks[index].todo,
              tick: taskData.tasks[index].isDone,
              onChanged: (value) {
                taskData.changeTaskState(taskData.tasks[index]);
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}

class TaskTile extends StatelessWidget {
  TaskTile({this.tick = false, this.onChanged, this.todo});

  final bool tick;
  final Function onChanged;
  final String todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          todo,
          style: TextStyle(
              fontSize: 15,
              decoration: tick ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            checkColor: Colors.white,
            activeColor: Colors.lightBlueAccent,
            value: tick,
            onChanged: onChanged));
  }
}
