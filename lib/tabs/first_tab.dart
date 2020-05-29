import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  final dataMap = <String, double>{};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 200,
            child: PieChart(
              dataMap: dataMap,
              showLegends: false,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text("pie_chart"),
        ],
      ),
    );
  }
}
