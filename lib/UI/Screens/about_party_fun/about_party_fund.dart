import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/board_group_chat/board_group_chat.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AboutPartyAndFun extends StatefulWidget {
  AboutPartyAndFun({Key? key}) : super(key: key);

  @override
  State<AboutPartyAndFun> createState() => AboutPartyAndFunState();
}

class AboutPartyAndFunState extends State<AboutPartyAndFun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
        child: Column(
          children: [
            upperTitleRow(
                text: "About PARTY & FUN",
                onTap: () {
                  Get.back();
                }),
            SizedBox(height: 20.h),
            Text(
              "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Nam dapibus ac libero id blandit. In risus neque, commodo quis luctus a, convallis quis sapien. Aliquam vitae pharetra nibh. Sed mollis interdum ante sit amet mollis. Vivamus efficitur tincidunt iaculis.",
              style: kCustomTextTextStyle(12, kblackColor),
            ),
            Text(
              "      Nunc dapibus urna turpis, sit amet malesuada massa ornare sit amet. Vivamus egestas, velit eget pretium feugiat, dolor tellus tincidunt nisi, sed vestibulum metus nunc quis magna.",
              style: kCustomTextTextStyle(12, kblackColor),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                "Rules & Privacy",
                style: kCustomTextTextStyle(14, kblackColor),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "In risus neque, commodo quis luctus a, convallis quis sapien. Aliquam vitae pharetra nibh. Sed mollis interdum ante sit amet mollis. Vivamus efficitur tincidunt iaculis.",
              style: kCustomTextTextStyle(12, kblackColor),
            ),
            SizedBox(height: 20.h),
            Text(
              "Vivamus egestas, velit eget pretium feugiat, dolor tellus tincidunt nisi, sed vestibulum metus nunc quis magna.",
              style: kCustomTextTextStyle(12, kblackColor),
            ),
            Spacer(flex: 3),
            buttonContainer3(
                height: 60.h,
                width: MediaQuery.of(context).size.width - 50,
                widget: Center(
                    child: Text(
                  "JOIN",
                  style: kCustomTextTextStyle(20, kwhiteColor),
                )),
                radius: 40,
                onTap: () {
                  Get.to(BoardGroupChart());
                },
                color: kLightBlueColor),
            Spacer()
          ],
        ),
      ),
    );
  }
}
