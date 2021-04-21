import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tesk Task',
      theme: ThemeData(
        primaryColor: Color(0xFF3C3E44),
        scaffoldBackgroundColor: Color(0xFF24282F),
      ),
      home: HomeScreen(),
    );
  }
}
