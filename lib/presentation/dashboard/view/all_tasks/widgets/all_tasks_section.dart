import 'package:flutter/cupertino.dart';
import 'package:task_app/presentation/dashboard/widgets/task_card.dart';

class AllTasksSection extends StatelessWidget {
  const AllTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return TaskCard(
            title: "title",
            time: "10:00",
            date: "09/07/2025",
            status: "Pending"
        );
      },

    );
  }
}
