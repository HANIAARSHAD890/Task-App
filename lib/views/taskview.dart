import 'package:flutter/material.dart';
import 'package:notes_app/constants/appColors.dart';
import 'package:notes_app/controllers/taskcontroller.dart';
import 'package:notes_app/controllers/themecontroller.dart';

import 'package:notes_app/widgets/add_task_dialogue.dart';
import 'package:notes_app/widgets/delete_task_dialogue.dart';
import 'package:notes_app/widgets/edit_task_dialogue.dart';
import 'package:notes_app/widgets/task_tile.dart';

class TaskListView extends StatefulWidget {
  final TaskListController controller;
   final ThemeController themeController;

  const TaskListView({
    super.key,
    required this.controller,
    required this.themeController
  });

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task List"),
       actions: [
          IconButton(
            icon: Icon(
              widget.themeController.isDark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          onPressed: widget.themeController.toggleTheme,
          ),
        ],),
      body: ListView.builder(
        itemCount: widget.controller.tasks.length,
        itemBuilder: (context, index) {
          final task = widget.controller.tasks[index];
          return TaskTile(
            task: task,
            onToggle: () {
          widget.controller.toggleTaskCompletion(task.id);
          setState(() {});
        }, onEdit: () {
         showDialog(
        context: context,
        builder: (_) => EditTaskDialog(
      task: task,
      onUpdate: (value) {
        widget.controller.updateTask(task.id, value);
        setState(() {});
      },
        ),
      );
      
        },
        onDelete: () {
      
      
              showDialog(
        context: context,
        builder: (_) => DeleteTaskDialog(
      onDelete: () {
        widget.controller.deleteTask(task.id);
        setState(() {});
      },
        ),
      );
        },
      
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AddTaskDialog(
              onAdd: (title) {
                widget.controller.addTask(title);
                setState(() {});
              },
            ),
          );
        },
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.onPrimary),
    ));
  }
}
