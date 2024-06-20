import 'package:flutter/material.dart';
import 'package:state_management/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State management',

      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


