import 'package:flutter/material.dart';
import 'package:todo_list_app/model/task_model.dart';
import 'package:todo_list_app/screens/edit_task_screen.dart';

class TaskDetailScreen extends StatelessWidget {
  final TaskModel task;
  const TaskDetailScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Details")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Due: ${task.dueDate.toLocal().toString().split(' ')[0]}"),
            Text("Priority: ${task.priority}"),
            Text("Tag: ${task.tag}"),
            const SizedBox(height: 20),
            Text(task.description),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditTaskScreen(task: task)),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                  icon: const Icon(Icons.edit,color: Colors.white,),
                  label: const Text("Edit",style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context, 'delete');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  icon: const Icon(Icons.delete,color: Colors.white,),
                  label: const Text("Delete",style: TextStyle(color: Colors.white),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
