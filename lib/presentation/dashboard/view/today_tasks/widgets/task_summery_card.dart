

import 'package:flutter/material.dart';
import 'package:task_app/app/constants/constant_text_style.dart';

class TaskSummaryCard extends StatelessWidget {

  final Color backgroundColor;
  final String title;
  final String subtitle;
  final IconData icons;
  final int count;
  final double? width;


  const TaskSummaryCard({super.key,
    required this.backgroundColor,
    required this.title,
    required this.subtitle,
    required this.icons,
    required this.count,
    this.width
  });

  @override
  Widget build(BuildContext context) {

    final Size size=MediaQuery.sizeOf(context);

    return SizedBox(
      width:  width ?? size.width * .45,
      child: Card(
        color: backgroundColor,
        elevation: 4,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //----------------Title ---------------
              Text(title,style:ConstantTextStyle.sectionTitle),

              SizedBox(height: 8,),

              //----------------------Count ------------
              Text(count.toString(),style: ConstantTextStyle.taskSummaryCardCount,),

              SizedBox(height: 8,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //----------------Icon-----------
                  Icon(Icons.task,size: 18,color: Colors.white,),

                  //--------------Subtitle --------
                  SizedBox(width: 6,),

                  Flexible(
                    child: Text(subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:ConstantTextStyle.taskSummaryCardSubtitle ,),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
