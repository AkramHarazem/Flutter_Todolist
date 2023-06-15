import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget { 

  final bool isChecked;
  final String taskTitle;
  final Function chechBoxCallBack;
  final Function longPressCallBack;

  TaskTile({required this.isChecked, required this.taskTitle,required this.chechBoxCallBack, required this.longPressCallBack});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => longPressCallBack(),
      title: Text(
        taskTitle,
        style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null)
        ),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked, 
      onChanged: (value) {
        chechBoxCallBack(value);
      },
      // toggleCheckbox,
      )
      // TaskCheckbox(
      //   checkboxState: isChecked,
      //   toggleCheckbox: (bool? value) { 
      //   setState(() {
      //     isChecked = value!;
      //   }); 
      //   }
      //   ),
  );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final void Function(bool? checkboxState) toggleCheckbox;
//   TaskCheckbox({required this.checkboxState, required this.toggleCheckbox});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState, 
//       onChanged: toggleCheckbox,
//       );}
//   }
