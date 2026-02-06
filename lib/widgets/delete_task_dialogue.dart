
import 'package:flutter/material.dart';
import 'package:notes_app/utilities/appColors.dart';

class DeleteTaskDialog extends StatelessWidget {
  final VoidCallback onDelete;

  const DeleteTaskDialog({super.key, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Delete Task"),
      content: const Text("Are you sure?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
             style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.deleteRed,
          ),
          onPressed: () {
            onDelete();
            Navigator.pop(context);
          },
          child: const Text("Delete"),
        ),
      ],
    );
  }
}
