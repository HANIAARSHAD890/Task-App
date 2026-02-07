import 'package:flutter/material.dart';
import 'package:notes_app/constants/appColors.dart';
import 'package:notes_app/constants/apptheme.dart';
import 'package:notes_app/controllers/taskcontroller.dart';
import 'package:notes_app/controllers/themecontroller.dart';

import 'package:notes_app/views/taskview.dart';

void main() {
  runApp(TaskListApp());
}

class TaskListApp extends StatelessWidget {
  final TaskListController controller = TaskListController();
   final ThemeController themeController = ThemeController();

  TaskListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeController,
      builder: (context, _) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: themeController.isDark ? ThemeMode.dark : ThemeMode.light,
  home: TaskListView(controller: controller, themeController: themeController), 
    );});
  }
}


