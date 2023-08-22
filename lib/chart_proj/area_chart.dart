// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'chart_model.dart';

class AreaChart extends StatelessWidget {
  AreaChart({
    Key? key,
    required this.data,
    required this.maxvalue,
    required this.minvalue,
    required this.interval,
  }) : super(key: key);

  final double maxvalue;
  final double minvalue;
  final double interval;

  final List<AreaChartData> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 220,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
            labelPlacement: LabelPlacement.onTicks,
            tickPosition: TickPosition.inside),
        primaryYAxis: NumericAxis(
          minimum: minvalue,
          maximum: maxvalue,
          interval: interval,
          edgeLabelPlacement: EdgeLabelPlacement.hide,
          tickPosition: TickPosition.inside,
        ),
        series: <ChartSeries<AreaChartData, String>>[
          AreaSeries<AreaChartData, String>(
            dataSource: data,
            borderWidth: 2,
            borderColor: Colors.orange,
            xValueMapper: (AreaChartData data, _) => data.x,
            yValueMapper: (AreaChartData data, _) => data.y,
            color: Colors.orange.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
