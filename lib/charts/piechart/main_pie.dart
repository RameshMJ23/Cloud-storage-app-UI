
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui3/charts/piechart/data.dart';
import 'package:ui3/charts/piechart/pie_widget.dart';

class MainPie extends StatefulWidget {
  @override
  _MainPieState createState() => _MainPieState();
}

class _MainPieState extends State<MainPie> {

  int touchIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: PieChart(
                      PieChartData(
                          pieTouchData: PieTouchData(
                            touchCallback: (event, pieTouchResponse){
                              setState(() {
                                if(event is FlLongPressEnd || event is FlTapDownEvent){
                                  touchIndex = pieTouchResponse!.touchedSection!.touchedSectionIndex.toInt();
                                }else{
                                  touchIndex = -1;
                                }
                              });
                            }
                          ),
                          sections: chartData(touchIndex),
                          borderData: FlBorderData(
                              show: false
                          ),
                          sectionsSpace: 10,
                          centerSpaceRadius: 60.0
                      ),
                    )

                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: PieData.data.map((data) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                              color: data.color,
                              shape: BoxShape.circle
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          data.name,
                          style: const TextStyle(
                              fontSize: 15.0
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        )
    );
  }
}
