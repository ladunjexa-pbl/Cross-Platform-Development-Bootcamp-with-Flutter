import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final dynamic checkboxCallback;

  const TaskTile({Key? key, required this.taskTitle, this.isChecked = false, required this.checkboxCallback}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.black87,
          fontFamily: 'Lato',
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18.0,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.indigo,
        value: isChecked,
        onChanged: checkboxCallback,
        // onChanged: toggleCheckboxState,
      ),
    );
  }
}
