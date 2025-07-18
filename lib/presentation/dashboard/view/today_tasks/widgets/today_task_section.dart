
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/routes/app_routes.dart';
import 'package:task_app/presentation/dashboard/widgets/task_card.dart';
import '../../../controller/task_controller.dart';

class TodayTaskSection extends StatelessWidget {
  final TaskController taskController;
  const TodayTaskSection({
    super.key, required this.taskController
  });

  @override
  Widget build(BuildContext context) {
    final todayTask=taskController.todayTask;
    return Obx(()=>  todayTask.isNotEmpty
        ?ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: todayTask.length,
        itemBuilder:(BuildContext,index){
          final task=todayTask[index];
          return GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.taskDetails,arguments: {
                'id':task.id,
                'title': task.title,
                'description': task.description,
                'date': task.date,
                'time': task.time,
                'status': 'Pending',
                'from':'Today',
              });
            },
            child:  TaskCard(
              title: task.title,
              time: task.time,
              date:task.date,
              status: 'Pending',
            ),
          );
        }
    )
        :Center(child: Text("Haven't today task")));
  }
}
