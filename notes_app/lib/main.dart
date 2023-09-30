// main.dart
import 'package:flutter/material.dart';
import 'package:notes_app/FifthScreen.dart';
import 'package:notes_app/slidable_themesScreen.dart';
import 'HomeScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'FourthScreen.dart';
import 'ListScreen.dart';
import 'ChartScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/fourth': (context) => FourthScreen(),
        '/list' :(context) => ListScreen(),
        '/chart' : (context) => ChartScreen(),
        '/slidable' : (context) => SlidableDemo(),
        '/fifth' : (context) => FifthScreen(),
        
      },
    );
  }
}
