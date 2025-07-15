import 'package:flutter/material.dart';

Future<DateTime?> showDate({required context}) async{

  var _pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate:DateTime(2027),
      initialDate: DateTime.now()
  );

  if(_pickDate != null){
    print(" selected : $_pickDate");
   return _pickDate;
  }
  return null;
}