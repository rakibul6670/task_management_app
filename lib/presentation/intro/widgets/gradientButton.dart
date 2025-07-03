
import 'package:flutter/material.dart';

Widget gradientButton({
  required String name,
  required List<Color> colors,
  fontSize,
}){
  return Container(

    padding: EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 12,
    ),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: colors),
      borderRadius: BorderRadius.all(Radius.circular(15)),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset:  Offset(0, 3),
        )
      ]
    ),

    child: Center(
      child: Text(name,style: TextStyle(
        fontSize:fontSize?? 18,
        color: Colors.white
      ),),
    ),
  );
}