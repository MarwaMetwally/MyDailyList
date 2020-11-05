import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mydaily_list/model/task_data.dart';
import 'taskTile.dart';

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemCount: taskdata.taskcount,
          itemBuilder: (context, int index) {
            return Listtile(
                taskdata.task[index].name, taskdata.task[index].done,
                (bool checkboxstate) {
              taskdata.updateTask(taskdata.task[index]);
            }, () {
              taskdata.deleteTask(index);
            }

                //setState(() {
                //updatelist();
                //print('taskkk ${task.length}');
                // taskdata.task[index].toggletask();

                // });
                );
          },
        );
      },
    );
  }
}
