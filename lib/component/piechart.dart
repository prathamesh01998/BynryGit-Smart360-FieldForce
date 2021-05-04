import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class Piechart extends StatefulWidget {
  @override
  _PiechartState createState() => _PiechartState();
}

class _PiechartState extends State<Piechart> {
  Map<String, double> dataMap = {
    "Reading": 500,
    "Bill distribution": 2503,
    "Notice": 1500,
    
  };
  // Color colorList = [
  //   Colors.
  // ]

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      //colorList: colorList,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
     
      ringStrokeWidth: 20,
      centerText: "85%",
      legendOptions: LegendOptions(
       
        showLegends: false,
        
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: true,
        decimalPlaces: 1,
      ),
    );
  }
}