import 'package:flutter/material.dart';
import 'package:notes_app/models/taskmodel.dart';
class TaskTile extends StatelessWidget {
   final Task task;
  final VoidCallback onToggle;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const TaskTile({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onEdit,
    required this.onDelete,
  });


  @override
  Widget build(BuildContext context) {
    return ListTile(
  leading: Checkbox(
    value: task.completed,
    onChanged: (_) => onToggle(),
  ),
  title: Text(
    task.title,
    style: TextStyle(
      decoration: task.completed
          ? TextDecoration.lineThrough
          : null,
    ),
  ),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        icon: Icon(Icons.edit),
        onPressed: onEdit,
      ),
      IconButton(
        icon: Icon(Icons.delete),
        onPressed: onDelete,
      ),
    ],
  ),
);
  }
}

