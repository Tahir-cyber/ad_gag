// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, must_be_immutable

import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? trailingIcon;
  final FormFieldValidator<String>? validator;
  TextInputType? textInputType;
  void Function(String?)? onsaved;
  final bool obsecuretext;
  IconData? suffixIcon;
  IconData? prefixIcon;
  double? padding;
  VoidCallback? replyontap;
  VoidCallback? ontapSuffix;
  Color? prefIconColor;
  double? contenthorizontalpadding;
  double? contentverticalpadding;

  GeneralTextField({
    this.ontapSuffix,
    this.contenthorizontalpadding,
    this.contentverticalpadding,
    this.replyontap,
    this.padding,
    this.suffixIcon,
    this.prefixIcon,
    this.obsecuretext = false,
    this.validator,
    this.textInputType,
    this.onsaved,
    this.prefIconColor,
    required this.hintText,
    required this.controller,
    this.trailingIcon,
  });

  @override
  _GeneralTextFieldState createState() => _GeneralTextFieldState();
}

class _GeneralTextFieldState extends State<GeneralTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding!),
      child: TextFormField(
        obscureText: widget.obsecuretext,
        onSaved: widget.onsaved,
        keyboardType: widget.textInputType,
        validator: widget.validator,
        style: TextStyle(
          color: Color(0xFF9A9A9F),
        ),
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: InkWell(
            onTap: widget.ontapSuffix,
            child: Icon(
              widget.prefixIcon,
              color: widget.prefIconColor,
            ),
          ),
          suffixIcon: InkWell(
              onTap: widget.replyontap,
              child: Icon(
                widget.suffixIcon,
                color: kGreyColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          // isCollapsed: false,
          // isDense: false,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Color(0xFFF0F0F0),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Color(0xFF9A9A9F),
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}

class PasswordCustomTextField extends StatefulWidget {
  final String hintText;

  final TextEditingController controller;
  final Widget? trailingIcon;
  final FormFieldValidator<String>? validator;
  TextInputType? textInputType;
  void Function(String?)? onsaved;
  final bool obsecuretext;
  IconData? prefixIcon;
  Color? prefIconColor;

  PasswordCustomTextField({
    this.prefixIcon,
    this.obsecuretext = false,
    this.validator,
    this.textInputType,
    this.onsaved,
    required this.hintText,
    required this.controller,
    this.trailingIcon,
  });

  @override
  State<PasswordCustomTextField> createState() =>
      _PasswordCustomTextFieldState();
}

class _PasswordCustomTextFieldState extends State<PasswordCustomTextField> {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: TextFormField(
        
        obscureText: widget.obsecuretext,
        onSaved: widget.onsaved,
        keyboardType: widget.textInputType,
        validator: widget.validator,
        style: TextStyle(
          color: Color(0xFF9A9A9F),
        ),
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefixIcon,
            color: widget.prefIconColor,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          // isCollapsed: false,
          // isDense: false,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Color(0xFFF0F0F0),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Color(0xFF9A9A9F),
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}

//post text field

class PostTextFiel extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? trailingIcon;
  final FormFieldValidator<String>? validator;
  TextInputType? textInputType;
  void Function(String?)? onsaved;
  final bool obsecuretext;
  PostTextFiel({
    Key? key,
    this.obsecuretext = false,
    this.validator,
    this.textInputType,
    this.onsaved,
    required this.hintText,
    required this.controller,
    this.trailingIcon,
  }) : super(key: key);

  @override
  State<PostTextFiel> createState() => _PostTextFielState();
}

class _PostTextFielState extends State<PostTextFiel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: TextFormField(
        obscureText: widget.obsecuretext,
        onSaved: widget.onsaved,
        keyboardType: widget.textInputType,
        validator: widget.validator,
        style: TextStyle(
          color: Color(0xFF9A9A9F),
        ),
        controller: widget.controller,
        decoration: InputDecoration(
          // suffixText: "0/50",
          counterText: "0/50",
          suffixStyle: kCustomTextTextStyle(12, kGreyColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          // isCollapsed: false,
          // isDense: false,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Color(0xFFF0F0F0),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Color(0xFF9A9A9F),
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
