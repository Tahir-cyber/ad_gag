import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton1(
    {required String text,
    required VoidCallback onPressed,
    double? width,
    double? minwidth}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: MaterialButton(
      height: 50.h,
      minWidth: minwidth != null ? minwidth : 266.w,
      color: const Color(0xFF0D7592),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 200.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customButton2({
  required String text,
  required VoidCallback onPressed,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: MaterialButton(
      height: 50.h,
      minWidth: 266.w,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(
          color: kLightBlueColor,
          width: 1,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xFF3B5998),
            child: Text(
              "f",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 50.w),
          Text(
            text,
            style: const TextStyle(color: kLightBlueColor),
          ),
        ],
      ),
    ),
  );
}

Widget customButton3(
    {required String text,
    required Color buttonColor,
    required Color textcolor,
    required Widget widget,
    required VoidCallback onPressed,
    required double height,
    Color? bordercolor,
    double? fontSize,
    Widget? widget2,
    MainAxisAlignment? mainAxisAlignment,
    required double width}) {
  return SizedBox(
    width: width,
    height: height,
    child: MaterialButton(
      elevation: 0,
      color: buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
              color: bordercolor != null ? bordercolor : Colors.transparent)),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: mainAxisAlignment != null
            ? mainAxisAlignment
            : MainAxisAlignment.center,
        children: [
          widget,
          SizedBox(width: 7.w),
          Text(
            text,
            style: TextStyle(
                fontSize: fontSize != null ? fontSize : 8, color: textcolor),
          ),
          widget2 != null ? widget2 : Text(""),
        ],
      ),
    ),
  );
}

Widget customButton4(
    {required String text,
    required Color buttonColor,
    required Color textcolor,
    required Widget widget,
    required VoidCallback onPressed,
    required double height,
    Widget? widget2,
    required double width}) {
  return SizedBox(
    width: width,
    child: MaterialButton(
      height: height,
      elevation: 0,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget,
          SizedBox(width: 7.w),
          Text(
            text,
            style: TextStyle(color: textcolor),
          ),
          widget2 != null ? widget2 : Container(),
        ],
      ),
    ),
  );
}

Widget upgradeFloatingButton({required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      height: 50,
      width: 0.75.sw,
      child: Image.asset("assets/Icons/gopro.png"),
      decoration: BoxDecoration(
        color: klightgreyColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.red),
      ),
    ),
  );
}

Widget textButton(
    {required VoidCallback onTap,
    required Widget widget,
    required double height,
    required double width}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      height: height,
      width: width,
      child: widget,
      decoration: BoxDecoration(
        color: kLightBlueColor,
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
}

Widget postScreenButton(
    {required String text,
    required Color color,
    required double size,
    required VoidCallback onPressed,
    required IconData iconData}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: SizedBox(
      width: size,
      child: MaterialButton(
        height: 60.h,
        elevation: 0,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            const Spacer(),
            Text(
              text,
              style: const TextStyle(color: kwhiteColor),
            ),
            const Spacer(),
            Icon(
              iconData,
              color: kwhiteColor,
            ),
            SizedBox(width: 16.w),
          ],
        ),
      ),
    ),
  );
}

Widget drawerButton({
  required String text,
  required Color color,
  required double height,
  required double width,
  required double textsize,
  required VoidCallback onPressed,
  required Color textColor,
}) {
  return SizedBox(
    width: width,
    child: MaterialButton(
      padding: EdgeInsets.all(0),
      height: height,
      elevation: 0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: kCustomTextTextStyle(
          10,
          textColor,
        ),
      ),
    ),
  );
}

Widget backButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 7.w),
    height: 23.h,
    width: 23.w,
    child: Icon(
      Icons.arrow_back_ios,
      color: kGreyColor,
      size: 16.h,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1), color: Colors.grey[200]),
  );
}

Widget buttonContainer({
  required Widget widget,
  required double radius,
  required VoidCallback onTap,
  double? height,
  double? width,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height != null ? height : 30,
      width: width != null ? width : 30,
      child: widget,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 1.r,
          offset: Offset(0, 2),
        ),
      ], color: kwhiteColor, borderRadius: BorderRadius.circular(radius)),
    ),
  );
}

Widget buttonContainer2({
  required Widget widget,
  required double radius,
  required VoidCallback onTap,
  required text,
  double? height,
  double? width,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height != null ? height : 30,
      width: width != null ? width : 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [widget, Text(text)],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 1.r,
          offset: Offset(0, 2),
        ),
      ], color: kwhiteColor, borderRadius: BorderRadius.circular(radius)),
    ),
  );
}

Widget buttonContainer3({
  required Widget widget,
  required double radius,

  required VoidCallback onTap,
  required color,
  double? height,
  double? width,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
     
      height: height != null ? height : 30,
      width: width != null ? width : 30,
      child: widget,
      decoration: BoxDecoration(
       color: color, borderRadius: BorderRadius.circular(radius)),
    ),
  );
}
