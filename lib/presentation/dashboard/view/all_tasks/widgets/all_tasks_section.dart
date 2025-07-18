import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/dashboard/controller/task_controller.dart';
import 'package:task_app/presentation/dashboard/widgets/task_card.dart';

import '../../../../../app/routes/app_routes.dart';

class AllTasksSection extends StatelessWidget {
   AllTasksSection({super.key});
  final  TaskController taskController =Get.find<TaskController>();
  @override
  Widget build(BuildContext context) {
    return Obx(()=> taskController.allTask.isNotEmpty ? ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: taskController.allTask.length,
      itemBuilder: (BuildContext context, int index) {
        final task =taskController.allTask[index];
        return GestureDetector(
          onTap: (){
            Get.toNamed(AppRoutes.taskDetails,arguments: {
              "id":task.id,
              "title":task.title,
              "description":task.description,
              "time":task.time,
              "date":task.date,
              "status":"Pending",
              "from":"allTask"
            });
          },
          child: TaskCard(
              title: task.title,
              time: task.time,
              date:task.date,
              status: "Pending"
          ),
        );
      },

    )
        :Center(child: Text("Task is Empty")));
  }
}
