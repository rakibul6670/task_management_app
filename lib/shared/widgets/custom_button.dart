import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;

  final String buttonName;
  final double? fontSize;

  final Color? color;
  final Gradient? backgroundGradient;

  final FontWeight? fontWeight;
  final Function()? onPressed;


  const CustomButton({super.key,
    required this.height,
    required this.width,
    required this.buttonName,
    this.fontSize,
    this.color,
    this.fontWeight, this.backgroundGradient, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,


      decoration: BoxDecoration(
        //-------------- Gradient Background Color -----------
        gradient: backgroundGradient?? LinearGradient(
            colors: [
              Color(0xFF4e1c94),
              Color(0xFF4068a0)
            ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        ),

        //---------------Border Radius -------------
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),


      child: TextButton(
        //--------------onPressed function -----------
          onPressed:onPressed,

          //--------------------Button Name -------------
          child: Text( buttonName,style: TextStyle(
            fontSize: fontSize?? 23,
            color:color??  Colors.white,
            fontWeight: fontWeight ?? FontWeight.bold
          ),)
      ),
    );
  }
}
