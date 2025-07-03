
import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageDecoration getPageDecoration({
  required Color bgColor,
  required Color titleTextColor,
  required Color bodyTextColor,
}){
  return PageDecoration(
    //========== Title Text Style ===========
    titleTextStyle:TextStyle(
      fontSize: 26,
      color: titleTextColor
    ),

    //=========== Body Text Style ===============
    bodyTextStyle: TextStyle(
      fontSize: 18,
      color: bodyTextColor,
    ),

    //================== Background Color =============
    pageColor: bgColor,

    //===================== Image padding ============
    imagePadding: const EdgeInsets.only(top: 40),
    contentMargin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

  );
}