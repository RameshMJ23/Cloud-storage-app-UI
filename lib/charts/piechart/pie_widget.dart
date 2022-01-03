import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart' as fl;
import 'package:ui3/charts/piechart/data.dart';


List<fl.PieChartSectionData> chartData(int touchIndex) => PieData.data.
              asMap()
              .map<int, fl.PieChartSectionData>(
                 (index, data){

                   final isTouched = index == touchIndex;
                   final radius = isTouched ? 100.0 : 80.0;

                   final value = fl.PieChartSectionData(
                      radius: 30,
                      color: data.color,
                      value: data.percent,
                      title: "",
                      titleStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: isTouched ? 20.0 : 15.0
                      ),
                   );
                   return MapEntry(index, value);
                 }
              ).values.toList();