
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskProgressChart extends StatelessWidget {
  const TaskProgressChart({super.key});

  final double totalTask=100;
  final double completedTask=23;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80.0,
      lineWidth: 16.0,
      animation: true,
      percent: completedTask / totalTask,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${((completedTask / totalTask) * 100).round()}%"),
          Text("$completedTask of $totalTask done"),
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Colors.green,
      backgroundColor: Colors.grey.shade300,
    );
  }
}
