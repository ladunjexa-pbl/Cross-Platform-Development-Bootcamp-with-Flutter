import 'package:flutter/material.dart';
import 'package:todosens/widgets/tasks_list.dart';
import 'package:todosens/screens/add_task_screen.dart';
import 'package:todosens/models/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy a new laptop'),
    Task(name: 'Create video for YouTube'),
    Task(name: 'Sleep for two hours'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent.shade100,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigoAccent.shade100,
        child: const Icon(
          Icons.add,
          // color: Colors.indigo,
          size: 30.0
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(
                        addTaskCallback: (newTaskTitle) {
                          setState(() {
                            tasks.add(Task(name: newTaskTitle));
                          });
                          Navigator.pop(context);
                        },
                      ),
                  )
              )
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 60.0, left: 30.0, right: 30.0, bottom: 30.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                      fontFamily: 'MsMadi',
                      fontSize: 70.0,
                    ),
                    children: [
                      TextSpan(
                        text: 'Todo',
                        style: TextStyle(
                          color: Colors.white,
                        )
                      ),
                      TextSpan(
                        text: 'sens',
                        style: TextStyle(
                          color: Colors.indigo,
                        )
                      )
                    ]
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
              ),
              child: TasksList(tasks: tasks),
            ),
          )
        ],
      ),
    );
  }
}