import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartMain extends StatefulWidget {
  @override
  _LineChartMainState createState() => _LineChartMainState();
}

class _LineChartMainState extends State<LineChartMain> {

  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
          ),
          color: const Color(0xff020227),
          child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 6,
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (val){
                    return FlLine(
                      color: Colors.orange[200]!.withOpacity(0.5),
                      strokeWidth: 2
                    );
                  },
                  getDrawingVerticalLine: (val){
                    return FlLine(
                      color: Colors.orange[200]!.withOpacity(0.5),
                      strokeWidth: 1.5
                    );
                  }
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: Colors.orange[200]!.withOpacity(0.5))
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 3),
                      const FlSpot(0, 3),
                      const FlSpot(2.6, 2),
                      const FlSpot(4.9, 5),
                      const FlSpot(6.8, 2.5),
                      const FlSpot(8, 4),
                      const FlSpot(9.5, 3),
                      const FlSpot(11, 4),
                    ],
                    isCurved: true,
                    colors: gradientColors,
                    barWidth: 5.0,
                    belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColors.map((e) => e.withOpacity(0.4)).toList()
                    )
                  )
                ],
                titlesData: getTitles(),
              )
          ),
        ),
      ),
    );
  }

  getTitles() => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      getTitles: (value){
        switch(value.toInt()){
          case 2:
            return "MAR";
          case 5:
            return "JUN";
          case 8:
            return "SEP";
        }
        return '';
      },
      getTextStyles: (context, value) => const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 16
      ),
      reservedSize: 25,
      margin: 10,
    ),
    leftTitles: SideTitles(
      showTitles: true,
      getTitles: (value){
        switch(value.toInt()){
          case 1:
            return "10K";
          case 3:
            return "30K";
          case 6:
            return "60K";
        }
        return '';
      },
      getTextStyles: (context, value) => const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 16
      ),
      reservedSize: 25,
      margin: 10,
    ),
    topTitles: SideTitles(
      showTitles: true,
      reservedSize: 20
    ),
    rightTitles:SideTitles(
      showTitles: true,
      reservedSize: 10
    )
  );
}
