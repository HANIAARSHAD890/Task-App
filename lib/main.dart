import 'package:flutter/material.dart';
import 'package:notes_app/controllers/taskcontroller.dart';
import 'package:notes_app/utilities/appColors.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    primaryColor: AppColors.primaryOrange,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.lightOrange,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(AppColors.primaryOrange),
    ),
  ),
  home: TaskListView(controller: controller),
    
    );
  }
}


