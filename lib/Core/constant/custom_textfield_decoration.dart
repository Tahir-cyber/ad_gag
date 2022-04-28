import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(
    fontSize: 18,
    color: Colors.grey,
  ),
);

TextStyle kGreyTextTextStyle(double fontSize) {
  return TextStyle(color: const Color(0xFF707070), fontSize: fontSize);
}

TextStyle kBlackTextTextStyle(double fontSize) {
  return TextStyle(color: const Color(0xFF000000), fontSize: fontSize);
}

TextStyle kCustomTextTextStyle(double fontSize, Color color) {
  return TextStyle(color: color, fontSize: fontSize);
}
TextStyle kBoldTextTextStyle(double fontSize, Color color,FontWeight fontWeight) {
  return TextStyle(color: color, fontSize: fontSize,fontWeight: fontWeight);
}
