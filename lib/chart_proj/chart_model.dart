import 'package:flutter/material.dart';

class PieChartData {
  PieChartData(this.x, this.y, this.color);

  final int x;
  final double y;
  final Color color;
}

class AreaChartData {
  AreaChartData(this.x, this.y);

  final String x;

  final double y;
}
