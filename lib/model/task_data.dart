import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:mydaily_list/model/tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Go to gym'),
    Task(name: 'Buy car'),
    Task(name: 'Complete My Task'),
  ];

  List<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskcount {
    return _task.length;
  }

  void addtask(String tasktitle) {
    final taskk = Task(name: tasktitle);
    _task.add(taskk);
    notifyListeners();
  }

  void updateTask(Task tassk) {
    tassk.toggletask();
    notifyListeners();
  }

  void deleteTask(int indx) {
    _task.removeAt(indx);
    notifyListeners();
  }
}
