import 'package:flutter/material.dart';
import 'package:flutter_test_proj/chart_proj/chart_model.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatelessWidget {
  const PieChart({
    super.key,
    required this.chartData,
  });

  final List<PieChartData> chartData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          width: 130,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text(
                    '53kg',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
              SfCircularChart(
                series: <RadialBarSeries<PieChartData, int>>[
                  RadialBarSeries<PieChartData, int>(
                      radius: '50',
                      innerRadius: '45',
                      maximumValue: 100,
                      dataSource: chartData,
                      //useSeriesColor: true,
                      //trackColor: Colors.grey,
                      trackOpacity: 0.4,
                      xValueMapper: (PieChartData data, _) => data.x,
                      yValueMapper: (PieChartData data, _) => data.y,
                      pointColorMapper: (PieChartData data, _) => data.color,
                      cornerStyle: CornerStyle.bothCurve),
                ],
              ),
            ],
          ),
        ),
        Text(
          '48kg',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
