import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/task_card.dart';

class CompleteTaskSection extends StatelessWidget {
  const CompleteTaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 13,
        itemBuilder: (BuildContext,index){
          return TaskCard(
              title: "title",
              time: "10:00",
              date: "09/07/2025",
              status: "Pending",
              statusBackgroundColor: Colors.green,
              leadingIconColor: Colors.green,
          );
        }
    );
  }
}
