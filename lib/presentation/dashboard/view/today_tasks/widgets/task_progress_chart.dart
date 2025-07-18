
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_app/presentation/dashboard/controller/task_controller.dart';

class TaskProgressChart extends StatelessWidget {
   final TaskController taskController;
   const TaskProgressChart({super.key, required this.taskController});

  //final double totalTask=100;
  final double completedTask=1;



  @override
  Widget build(BuildContext context) {

    return Obx((){
      //------------------Percentage calculation-------------
      final double percet = taskController.totalTask.value>0
          ? completedTask / taskController.totalTask.value
          : 0.0;
      return CircularPercentIndicator(
        radius: 80.0,
        lineWidth: 16.0,
        animation: true,
        percent:percet ,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${(percet * 100).round()}%"),
            Text("$completedTask of ${taskController.totalTask.value} done"),
          ],
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.green,
        backgroundColor: Colors.grey.shade300,
      );
    });
  }
}
