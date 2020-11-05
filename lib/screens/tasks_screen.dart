import 'package:flutter/material.dart';
import 'package:mydaily_list/widgets/taskList.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:mydaily_list/model/task_data.dart';

class MyTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.lightBlueAccent,
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (context) => AddTask());
            }),
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 30, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SafeArea(
                    //child:
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(Icons.list,
                          size: 30, color: Colors.lightBlueAccent),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Todoye',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 40),
                    ),
                    Text(
                      ' ${Provider.of<TaskData>(context).taskcount} Tasks',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),

                    //  ),
                  ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Listview(),
                ),
              ),
            )
          ],
        ));
  }
}
