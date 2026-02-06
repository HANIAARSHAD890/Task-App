import 'package:notes_app/models/taskmodel.dart';

class TaskListController {
  List<Task> tasks = [Task(1, "Sample Task", false)];


   
   void addTask(String title) {
    tasks.add(Task(
    DateTime.now().millisecondsSinceEpoch,
       title,
       false,
    ));
   }
 
  void deleteTask(int id) {
    tasks.removeWhere((task) => task.id == id);
  }

  void updateTask(int id, String newTitle) {
    final task = tasks.firstWhere((t) => t.id == id);
    task.title = newTitle;
  }
void toggleTaskCompletion(int id) {
    final task = tasks.firstWhere((t) => t.id == id);
    task.completed = !task.completed;
  }
}