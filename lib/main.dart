import 'package:flutter/material.dart';
import 'package:todoapp/todo/datepicker.dart';
import 'package:todoapp/todo/todoapp.dart';

import 'todo/home.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}
