import 'package:flutter/material.dart';
import '../models/task_data.dart';
import 'Task_Tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked:taskData.tasks[index].isDone,
              chechBoxCallBack: (bool? value) {
              taskData.updateTask(taskData.tasks[index]);
              },
              longPressCallBack: (){
                taskData.deleteTask(taskData.tasks[index]);
              },
              );
        },
        itemCount: taskData.taskCount,
      );
      },
      
    );
    // (
    //   children: [
    //     TaskTile(taskTitle:tasks[0].name ,isChecked:tasks[0].isDone ),
    //     TaskTile(taskTitle:tasks[1].name ,isChecked:tasks[1].isDone),
    //     TaskTile(taskTitle:tasks[2].name ,isChecked:tasks[2].isDone),
    //   ],
    // );
  }
}
