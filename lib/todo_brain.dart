class Task {
  String todo;
  bool isDone;
  Task({this.isDone= false,this.todo});

  toggleState(){
    isDone = !isDone;
  }
}