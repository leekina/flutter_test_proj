import 'package:flutter/material.dart';
import 'package:flutter_test_proj/chart_proj/chart_model.dart';
import 'package:get/get.dart';
import 'area_chart.dart';
import 'pie_chart.dart';

class WeightGoalCard extends StatefulWidget {
  const WeightGoalCard({
    super.key,
    required this.weightData,
    required this.dialData,
  });

  final List<AreaChartData> weightData;
  final List<PieChartData> dialData;

  @override
  State<WeightGoalCard> createState() => _WeightGoalCardState();
}

class _WeightGoalCardState extends State<WeightGoalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "이번주 체중 목표",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "자세히 보기 >",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              AreaChart(
                data: widget.weightData,
                maxvalue: 70,
                minvalue: 30,
                interval: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.defaultDialog(title: 'Dialog', middleText: 'Dialog');
                },
                child: PieChart(chartData: widget.dialData),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WorkoutGoalCard extends StatelessWidget {
  const WorkoutGoalCard({
    super.key,
    required this.workoutData,
    required this.dialData,
  });

  final List<AreaChartData> workoutData;
  final List<PieChartData> dialData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "이번주 운동 목표",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "자세히 보기 >",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              AreaChart(
                data: workoutData,
                maxvalue: 180,
                minvalue: 0,
                interval: 30,
              ),
              PieChart(chartData: dialData),
            ],
          ),
        ],
      ),
    );
  }
}
