import 'package:flutter/material.dart';
import 'package:ui3/charts/line_chart/main_line_chart.dart';
import 'package:ui3/charts/piechart/main_pie.dart';
import 'package:ui3/screens/home_screen.dart';
import 'package:ui3/screens/ui_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

