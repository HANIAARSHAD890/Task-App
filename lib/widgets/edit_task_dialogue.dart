import 'package:flutter/material.dart';
import 'package:notes_app/models/taskmodel.dart';
import 'package:notes_app/utilities/appColors.dart';

class EditTaskDialog extends StatelessWidget {
  final Task task;
  final void Function(String) onUpdate;

  const EditTaskDialog({
    super.key,
    required this.task,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: task.title);

    return AlertDialog(
      title: const Text("Edit Task"),
      content: TextField(controller: controller),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
               style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryOrange,
          ),
          onPressed: () {
            onUpdate(controller.text);
            Navigator.pop(context);
          },
          child: const Text("Update"),
        ),
      ],
    );
  }
}
