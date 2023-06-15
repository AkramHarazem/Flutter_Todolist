import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home:TasksScreen() ,
      ),
    );
  }
}
