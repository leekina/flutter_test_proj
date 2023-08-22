import 'package:flutter/material.dart';
import 'package:flutter_test_proj/chart_proj/chart_model.dart';
import 'goal_card.dart';

class AnalyzeGraph extends StatelessWidget {
  AnalyzeGraph({Key? key}) : super(key: key);

  List<PieChartData> weightDialData = <PieChartData>[
    PieChartData(1, 50, Colors.orange),
  ];

  List<PieChartData> workoutDialData = <PieChartData>[
    PieChartData(1, 50, Colors.orange),
  ];

  List<AreaChartData> weightData = [
    AreaChartData('월', 52),
    AreaChartData('화', 51),
    AreaChartData('수', 56.2),
    AreaChartData('목', 55),
    AreaChartData('금', 54.2),
    AreaChartData('토', 52),
    AreaChartData('일', 51),
  ];

  List<AreaChartData> workOutData = [
    AreaChartData('월', 30),
    AreaChartData('화', 60),
    AreaChartData('수', 0),
    AreaChartData('목', 30),
    AreaChartData('금', 50),
    AreaChartData('토', 70),
    AreaChartData('일', 120),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            '통계',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.orange,
                  ),
                ),
                labelColor: Colors.black,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    text: "일일 기록",
                  ),
                  Tab(
                    text: "기간별 분석",
                  ),
                  Tab(
                    text: "달성 기록",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
              child: Container(color: Colors.grey),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: Text("일일 기록"),
                  ),
                  Stack(
                    children: [
                      SingleChildScrollView(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Column(
                          children: [
                            WeightGoalCard(
                                weightData: weightData,
                                dialData: weightDialData),
                            WorkoutGoalCard(
                                workoutData: workOutData,
                                dialData: workoutDialData),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Text("달성 기록"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
