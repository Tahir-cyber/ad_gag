import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/switch_Button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';

import '../../Core/constant/colors.dart';
import '../../Core/constant/custom_textfield_decoration.dart';

Widget customContainer(String text, String image) {
  return Container(
    height: 20.h,
    width: 50.w,
    decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          image,
          height: 10,
        ),
        Text(
          text,
          style: kBoldTextTextStyle(12, kGreyColor, FontWeight.w500),
        )
      ],
    ),
  );
}

Widget shareContainer2(
  String text,
) {
  return Container(
    height: 20.h,
    width: 55.w,
    decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.share,
          color: kblackColor,
          size: 12,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(text, style: kCustomTextTextStyle(12, kGreyColor))
      ],
    ),
  );
}

Widget ImageContainer(
    {required String image, required double height, required double width}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            )),
        color: kLightBlueColor,
        borderRadius: BorderRadius.circular(10)),
  );
}

Widget editProfileContainer(String text, double radius, Color color,
    double height, double width, bool onToggle) {
  return Container(
    padding: EdgeInsets.only(left: 20.w),
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(radius)),
    child: Row(
      children: [
        SizedBox(
          width: 6.w,
        ),
        Text(text,
            style: TextStyle(
              color: kGreyColor,
              fontSize: 12,
            )),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSwitch2(onToggle: onToggle),
        )
        // CustomSwitchButton(onToggle:onToggle ,onToggleChanged: ,)
      ],
    ),
  );
}

Widget uploaddocContainer(
    {context, required VoidCallback buttonontap, required String text}) {
  return DottedBorder(
    strokeWidth: 2,
    dashPattern: [10, 6],
    radius: Radius.circular(10),
    color: kGreyColor,
    child: Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: klightgreyColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonContainer(
              widget: Icon(Icons.file_upload_outlined),
              radius: 30,
              onTap: buttonontap),
          SizedBox(height: 5.h),
          Text(text)
        ],
      ),
    ),
  );
}

Widget marqueeContainer(String text) {
  return SizedBox(
    height: 20.h,
    width: 200.w,
    child: Marquee(
      text: text,
      style: kBlackTextTextStyle(16),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 20.0,
      velocity: 30.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    ),
  );
}
