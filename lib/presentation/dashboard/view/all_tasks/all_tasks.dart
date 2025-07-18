
import 'package:flutter/material.dart';
import 'package:task_app/presentation/dashboard/view/all_tasks/widgets/all_tasks_section.dart';
import 'package:task_app/shared/widgets/custom_icon_button.dart';
import 'package:task_app/shared/widgets/custom_text_field.dart';

import '../../../../app/constants/constant_text_style.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
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
            //=======================All Task Section ==================

            //-----------Section title ----
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Task",style: ConstantTextStyle.sectionTitle,),
                CustomIconButton(
                    onPressed: (){},
                    height: 50,
                    width: 120,
                    buttonName:"Filter",
                    color: Colors.black,
                    backgroundGradient: LinearGradient(colors: [Colors.white,Colors.white]),
                    icon: Icon(Icons.filter_alt,size: 30,color: Colors.black,)
                )
              ],
            ),

            SizedBox(height: 15,),

            AllTasksSection(),
            
            
          ],
        ),
      ),
    );
  }
}
