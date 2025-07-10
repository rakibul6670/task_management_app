
import 'package:flutter/material.dart';
import 'package:task_app/app/constants/constant_text_style.dart';
import 'package:task_app/presentation/dashboard/view/today_tasks/widgets/task_progress_chart.dart';
import 'package:task_app/presentation/dashboard/view/today_tasks/widgets/task_summery_card.dart';
import 'package:task_app/presentation/dashboard/view/today_tasks/widgets/today_task_section.dart';

class TodayTasks extends StatelessWidget {
  const TodayTasks({super.key});


  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //------------------Section title -------
            Text("Task Summary",style: ConstantTextStyle.taskCardSectionTitle,),
            SizedBox(height: 10,),
            //=========================Today Task =========================
            TaskSummaryCard(
              width: size.width * 1,
              title: "Total Task",
              subtitle:"All created tasks",
              count:34,
              backgroundColor: Colors.blue,
              icons: Icons.task,
            ),

            SizedBox(height: 10,),

            //=================Complete and pending task ====================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //--------------Complete Task -------------------
                TaskSummaryCard(
                  //width: size.width * .50,
                  title: "Complete Task",
                  subtitle:"Tasks you've completed",
                  count:23,
                  backgroundColor: Colors.green,
                  icons: Icons.check_circle_outline,
                ),

                //----------------------Pending Task----------
                TaskSummaryCard(
                  title: "Pending Task",
                  subtitle:"Yet to be done",
                  count:11,
                  backgroundColor: Colors.red,
                  icons: Icons.task,
                ),
              ],
            ),

            SizedBox(height: 10,),

            //=========================Progress Section =====================================
            //--------------Progress section title-------
            Text("Progress Overview",style: ConstantTextStyle.taskCardSectionTitle,),

            SizedBox(height: 10,),
            //--------------------Progress Chart --------
            Center(
              child: TaskProgressChart(),
            ),
            SizedBox(height: 10,),



            //==========================Today Task Section ================================
            //--------------Task Task Section title ------
            Text("Today's Task",style: ConstantTextStyle.taskCardSectionTitle,),
            SizedBox(height: 10,),
            //-----------------Today task --------
            TodayTaskSection(),

          ],
        ),
      ),
    );
  }
}

