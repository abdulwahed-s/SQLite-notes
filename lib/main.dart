// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:alarm/alarm.dart';
// import 'package:alarm/model/alarm_settings.dart';
import 'package:database/addnotes.dart';
import 'package:database/home.dart';
// import 'package:database/sqldb.dart';
import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';

void main() async{
  runApp(const MyApp());
  await Alarm.init();
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {"AddNotes": (context) => AddNotes()},
    );
  }
}
