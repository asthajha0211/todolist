import 'package:flutter/material.dart';

import 'package:todolist/theme.dart';
import 'package:todolist/tasks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application. 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var _taskIndex = 0;


  // void answerQuestion() {
  //   setState(() {
  //     _taskIndex = _taskIndex + 1;
  //   });
  //   //print(_taskIndex);
  // }

  @override
  initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // var tasks = [
    //   {
    //     ''
    //   }
    // ];
    return MaterialApp(
      home: Home(),
      title: 'To Do List',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
    );
  }
}

class Home extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List', style: Theme.of(context).textTheme.headline1),
        actions: [
          IconButton(
            onPressed: () {
              currentTheme.toggleTheme();
            },
            icon: const Icon(Icons.brightness_4_rounded),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Seems like a good time to get started!',
              style: Theme.of(context).textTheme.headline2,
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child:
              Icon(Icons.add, color: Theme.of(context).unselectedWidgetColor),
          backgroundColor: Theme.of(context).accentColor),
    );
  }
}
