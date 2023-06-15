import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20) ,
                    topRight:Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Add Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.w400
                      ),),
                      SizedBox(height: 20,),
                      TextField(
                        onChanged: (value){
                          newTaskTitle=value;
                        } ,
                        autofocus: true,
                        textAlign: TextAlign.center ,
                        decoration: InputDecoration(
                  
                      ),),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
                        ),
                        onPressed: () {
                          Provider.of<TaskData>(context).addTask(newTaskTitle);
                          Navigator.pop(context);
                        }
                      , child: Text('Add'))
                    ],
                  ),
      ),
    );
  }
}