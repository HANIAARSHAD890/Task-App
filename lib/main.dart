import 'package:flutter/material.dart';
import 'package:notes_app/controllers/taskcontroller.dart';
import 'package:notes_app/views/taskview.dart';

void main() {
  runApp(TaskListApp());
}

class TaskListApp extends StatelessWidget {
  final TaskListController controller = TaskListController();

  TaskListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Task List'),
        ),
        body: TaskListView(controller: controller),
      ),
    );
  }
}