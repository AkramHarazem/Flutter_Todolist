import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import '../widgets/Task_List.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, 
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen()
                  ));
            },);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius:30 ,
                child: Icon(Icons.list, size: 30,
                color: Colors.lightBlueAccent,
                // shadows: [Shadow(blurRadius:10 , offset: Offset(4, 4))]
                )),
                SizedBox(height: 10,),
              Text('Todoey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w700
              ),
              ),
              Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                )
              ),
            ]),
        ),
        Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20) ,
                  topRight:Radius.circular(20)),
                ),
                child: TasksList() ,
              ),
            )
        ],
      ) ,
    );
  }
}



