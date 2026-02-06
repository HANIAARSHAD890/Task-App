import 'package:flutter/material.dart';
import 'package:notes_app/utilities/appColors.dart';

class AddTaskDialog extends StatelessWidget {
  final void Function(String) onAdd;

  const AddTaskDialog({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return AlertDialog(
      title: const Text("Add Task"),
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: const InputDecoration(
          hintText: "Write your task...",
        ),
      ),
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
            if (controller.text.trim().isNotEmpty) {
              onAdd(controller.text.trim());
              Navigator.pop(context);
            }
          },
          child: const Text("Add"),
        ),
      ],
    );
  }
}
