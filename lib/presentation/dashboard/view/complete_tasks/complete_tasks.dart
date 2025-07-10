
import 'package:flutter/material.dart';
import 'package:task_app/presentation/dashboard/view/complete_tasks/widgets/complete_task_section.dart';

import '../../../../app/constants/constant_text_style.dart';
import '../../../../shared/widgets/custom_text_field.dart';

class CompleteTasks extends StatelessWidget {
  const CompleteTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //===========================Search box section ============
            CustomTextField(
              fillColor: Colors.grey[300],
              borderRadius: 17,
              hintText: "Search your task..",
              contentPadding: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  left: 25,
                  right: 45
              ),
              suffix: Icon(Icons.search,size: 35,),
              hintTextStyle: TextStyle(
                  color: Colors.black
              ),

            ),

            SizedBox(height: 15,),
            //========================= Section title =========

            Text("All Task",style: ConstantTextStyle.completeTaskSectionTitle,),

            SizedBox(height: 15,),

            //=============================Complete Task Section =============
            CompleteTaskSection(),

          ],
        ),
      ),
    );
  }
}
