import 'package:flutter/foundation.dart';
import 'package:getitdone/todo_brain.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(todo: 'Kill you'),
    Task(todo: 'kill her'),
    Task(todo: 'make money'),
  ];
int get taskLength {
  return tasks.length;
}
 addNewTask(String newTask){
  final addNewTask = Task(todo: newTask);
  tasks.add(addNewTask);
  notifyListeners();
}
  changeTaskState(Task task){
  task.toggleState();
  notifyListeners();
  }
  deleteTask(Task task)async{
  if (task.isDone == true){
   await Future.delayed(Duration(seconds: 2));
    tasks.remove(task);
    notifyListeners();
  }
  }
}