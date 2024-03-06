import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key, required this.addTaskCallback}) : super(key: key);

  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 30.0,
                color: Colors.indigoAccent.shade100,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent.shade100),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent.shade100),
                ),
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              //color: Colors.indigo,
              style: TextButton.styleFrom(
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
                backgroundColor: Colors.indigoAccent.shade100
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato',
                ),
              ),
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
