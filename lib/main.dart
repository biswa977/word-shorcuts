import 'package:flutter/material.dart';
import 'package:msword/screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MS word shortcut guide',
      theme:  ThemeData.dark(),
     
      home: HomePage(),
    );
  }
}

