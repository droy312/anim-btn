import 'package:anim_btn/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Animation',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}