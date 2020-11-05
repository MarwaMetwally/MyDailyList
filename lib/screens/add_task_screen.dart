import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mydaily_list/model/task_data.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Container(
        padding: EdgeInsets.only(top: 15, right: 30, left: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            /*Divider(
              color: Colors.lightBlueAccent,
              height: 30,
              indent: 20,
              endIndent: 20,
              thickness: 2,
            )*/
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Provider.of<TaskData>(context).addtask(name);
                  Navigator.pop(context);
                  //setState(() {
                  //  print('dost  $name');
                  //Listview(
                  //name: name,
                  //   );
                  //    Navigator.pop(context);
                  // });
                },
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
