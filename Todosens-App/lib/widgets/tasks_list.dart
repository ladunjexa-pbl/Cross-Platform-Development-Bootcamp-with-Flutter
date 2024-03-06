import 'package:flutter/material.dart';
import 'package:todosens/widgets/task_tile.dart';
import 'package:todosens/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key, required this.tasks,
  }) : super(key: key);

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}