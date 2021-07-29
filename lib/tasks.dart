import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String taskshort;
  final String tasklong;

  Task(this.tasklong, this.taskshort);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool _isChecked = false;
  String stask='taskshort';
  String ltask='tasklong';

  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return Colors.blue;
    //   }
    //   return Colors.red;
    // }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: Row(
              children: [
                CheckboxListTile(
                  title:Text(ltask),
                  checkColor: Theme.of(context).unselectedWidgetColor,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                      
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
