
import 'package:flutter/material.dart';
import 'package:task_app/presentation/dashboard/widgets/task_card.dart';

class TodayTaskSection extends StatelessWidget {
  const TodayTaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder:(BuildContext,index){

          return TaskCard(
              title: "I Have Live Class",
              time: "10:10 AM",
              date:"09/07/25",
              status:"Pending"
          );
        }
    );
  }
}
