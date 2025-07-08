
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> showConfirmDialog({
  required String title,
  required String content,
  required Function() logout,
  Icon? titleIcon,
  // Icon? confirmIcon,
  // Icon? cancelIcon,
}) {
  return Get.dialog(
    AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Row(
        children: [
         titleIcon?? Icon(Icons.logout, color: Colors.redAccent),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
      content: Text(
        content,
        style: TextStyle(fontSize: 16),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        // Cancel Button
        OutlinedButton(
          onPressed: () => Get.back(),

          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            side: BorderSide(color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            shadowColor: Colors.black,
          ),

          //icon: cancelIcon?? Icon(Icons.close, color: Colors.black),

          child: Text("No", style: TextStyle(color: Colors.black)),
        ),

        // Confirm Button
        ElevatedButton(
          onPressed:logout,

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            shadowColor: Colors.black,

          ),
         // icon: confirmIcon??Icon(Icons.logout,color: Colors.black,),

          child: Text("Yes",style: TextStyle(
            color: Colors.white
          ),),
        ),
      ],
    ),
    barrierDismissible: false, // user must tap a button
  );
}



