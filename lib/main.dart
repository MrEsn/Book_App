import 'package:flutter/material.dart';
import 'package:onbook/screens/homeScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Peyda'),
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
