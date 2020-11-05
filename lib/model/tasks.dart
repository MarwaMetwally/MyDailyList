class Task {
  String name;
  bool done;
  Task({this.name, this.done = false});
  void toggletask() {
    done = !done;
  }
}
