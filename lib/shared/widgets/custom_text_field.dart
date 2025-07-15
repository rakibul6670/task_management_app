
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget? suffix;
  final Widget? prefix;

  final Color? fillColor;
  final double borderRadius;
  
  final TextEditingController? controller;
  final bool? obscureText;
  final String? Function(String?)? validation;
  
  final String hintText;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? textInputType;
  
  final InputBorder? enableBorder;
  final InputBorder? focusBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusErrorBorder;

  final int? maxLine;





  const CustomTextField({super.key,
    this.suffix, 
    this.prefix,
    this.fillColor, 
    required this.borderRadius, 
    this.controller,
    this.obscureText, 
    this.validation, 
    required this.hintText,
    this.contentPadding,
    this.enableBorder,
    this.focusBorder,
    this.errorBorder,
    this.focusErrorBorder,
    this.hintTextStyle,
    this.inputTextStyle,
    this.textInputType,
    this.maxLine
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:fillColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius))
        //shape: BoxShape.rectangle
      ),
      child: Stack(
        children:[

          //=================== Prefix Icon ===============
          Positioned(
              top: 0,
              bottom: 0,
              left: 7,
              child: prefix??Text(""),
          ),


          //======================= Text Field ==============
          TextFormField(
            validator: validation,
            controller:controller ,
            obscureText:obscureText?? false,
            style: inputTextStyle,
            maxLines: maxLine ?? 1,
            //maxLength: 1,

            keyboardType:textInputType?? TextInputType.text,
            
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: hintTextStyle?? TextStyle(
                color: Colors.red,
              ),



              contentPadding: contentPadding ?? EdgeInsets.symmetric(
                horizontal: 50,
                vertical:24,
              ),

              enabledBorder:enableBorder?? InputBorder.none,
              focusedErrorBorder: focusErrorBorder?? InputBorder.none,
              focusedBorder:focusBorder?? InputBorder.none,
              errorBorder: errorBorder ?? InputBorder.none

          ),
        ),


          //--------------------Suffix IconButton --------------------
          Positioned(
              top: 0,
              bottom: 0,
              right: 2,
              child:suffix??Text(""),
          ),


      ]),
    );
  }
}
