import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  final bool ischecked;
  final String taskTitle;
  final Function callbackcheckbox;
  final Function longpress;
 
  Listtile(
      this.taskTitle, this.ischecked, this.callbackcheckbox, this.longpress);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: callbackcheckbox,
      ),
    );
  }
}
