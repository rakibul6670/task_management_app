import 'package:flutter/material.dart';
import 'package:task_app/app/constants/constant_text_style.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String time;
  final String date;
  final String status;
  final Color? statusBackgroundColor;
  final Color? leadingIconColor;

  const TaskCard({super.key,
    required this.title,
    required this.time,
    required this.date,
    required this.status,
    this.statusBackgroundColor,
    this.leadingIconColor
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      elevation: 4,

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(

          //================Task Title Section ==============
          title: Text(title,
            //maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: ConstantTextStyle.taskCardTitle,
           ),

          //========================Leading Icon section ==========
          leading: Icon(Icons.book,color:leadingIconColor?? Colors.orange,size: 35,),

          //============================Time and Date Section==================
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6,),
              //------------Time ----------
              Row(
                children: [
                  Icon(Icons.watch_later,size: 18,),

                  SizedBox(width: 7,),

                  Text(time,style: ConstantTextStyle.taskCardTime,),
                ],
              ),

              SizedBox(height: 6,),
              //-----------------Date ------------
              Row(
                children: [
                  Icon(Icons.timelapse_rounded,size: 18,),

                  SizedBox(width: 7,),

                  Text(date,style:ConstantTextStyle.taskCardDate),
                ],
              ),


            ],
          ),


          //======================Task Status Section ==============
          trailing: Chip(
            label: Text(status,
                style: ConstantTextStyle.taskCardStatus),
            backgroundColor:statusBackgroundColor?? Colors.orange,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          ),

        ),
      ),
    );
  }
}
