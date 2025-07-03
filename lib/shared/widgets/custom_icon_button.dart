import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double height;
  final double width;

  final Function()? onPressed;

  final String buttonName;
  final double? fontSize;
  final Color? color;

  final Gradient? backgroundGradient;
  final Widget icon;
  final FontWeight? fontWeight;

  const CustomIconButton({super.key,
    required this.height,
    required this.width,
    required this.buttonName,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.backgroundGradient, required this.icon, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
          gradient: backgroundGradient ?? LinearGradient(
              colors: [
                Color(0xFF3b2063),
                Color(0xFF3b2063)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: TextButton.icon(

        //--------------- onPressed function -------------
          onPressed: onPressed,

          //----------------------button icon ------
          icon: icon,
          //------------------label -----------------
          label: Text( buttonName,style: TextStyle(
              fontSize: fontSize?? 23,
              color:color??  Colors.white,
              fontWeight: fontWeight ?? FontWeight.bold
          ),),

      ),
    );
  }
}
