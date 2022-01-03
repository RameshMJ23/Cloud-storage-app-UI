

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data{
  late String name;
  late double percent;
  late Color color;

  Data({required this.name,required this.percent,required this.color});
}

class PieData{
  static List<Data> data = [
    Data(name: "blue", percent: 45.0, color: Colors.blue),
    Data(name: "green", percent: 25.0, color: Colors.green),
    Data(name: "orange", percent: 20.0, color: Colors.orange),
    Data(name: "yellow", percent: 10.0, color: Colors.yellow),
  ];
}