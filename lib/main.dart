import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/provider/task_provider.dart';
import 'package:todo_list_app/screens/splash_screen.dart';
import 'package:todo_list_app/utils/theme.dart';


void main() {
  runApp(const TaskaApp());
}

class TaskaApp extends StatelessWidget {
  const TaskaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        title: 'Task APP',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
        home: const SplashScreen(),
      ),
    );
  }
}