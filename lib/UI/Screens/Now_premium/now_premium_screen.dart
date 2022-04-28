import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Core/constant/colors.dart';
import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_row.dart';
import '../home_screen/home_screen.dart';

class NowPremium extends StatefulWidget {
  NowPremium({Key? key}) : super(key: key);

  @override
  State<NowPremium> createState() => _NowPremiumState();
}

class _NowPremiumState extends State<NowPremium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Image.asset(
                    "assets/Images/logo_blue.png",
                    width: 162.w,
                    height: 100.h,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: buttonContainer(
                        onTap: () {
                          Get.offAll(HomeScreen());
                        },
                        widget: Icon(
                          Icons.close,
                          size: 25.sp,
                        ),
                        radius: 10),
                  ),
                ]),
            Text(
              "Get the Premium App Features \n and Unlock Everything",
              style: kCustomTextTextStyle(18, kyellowColor),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text(
                "You are premium User now",
                style: kCustomTextTextStyle(14.sp, kGreyColor),
              ),
            ),
            SizedBox(height: 15.h),
            Center(child: Image.asset("assets/Icons/diamond.png")),
            Spacer(),
            drawerRow(
                sizedBoxWidth: 15,
                padding: 20,
                onTap: () {},
                widget: Image.asset(
                  "assets/Icons/upvote.png",
                  height: 25.h,
                  width: 15,
                ),
                text: "Upload your content"),
            SizedBox(
              height: 20.h,
            ),
            drawerRow(
                sizedBoxWidth: 15,
                padding: 20,
                onTap: () {},
                widget: Image.asset(
                  "assets/Icons/linkweb.png",
                  height: 25.h,
                  width: 15,
                ),
                text: "Link website in posts"),
            SizedBox(height: 20.h),
            drawerRow(
                sizedBoxWidth: 15,
                padding: 20,
                onTap: () {},
                widget: Image.asset(
                  "assets/Icons/link.png",
                  height: 25.h,
                  width: 15,
                ),
                text: "Link company location in posts"),
            SizedBox(
              height: 20.h,
            ),
            drawerRow(
                sizedBoxWidth: 15,
                padding: 20,
                onTap: () {},
                widget: Image.asset(
                  "assets/Icons/man.png",
                  height: 25.h,
                  width: 15,
                ),
                text: "Get pro badge on profile"),
            SizedBox(
              height: 20.h,
            ),
            drawerRow(
                sizedBoxWidth: 15,
                padding: 20,
                onTap: () {},
                widget: Image.asset(
                  "assets/Icons/verified.png",
                  height: 25.h,
                  width: 15,
                ),
                text: "Get your company or brand verified"),
            SizedBox(
              height: 20.h,
            ),
            drawerRow(
                sizedBoxWidth: 15,
                padding: 20,
                onTap: () {},
                widget: Image.asset(
                  "assets/Icons/save_blue.png",
                  height: 25.h,
                  width: 15,
                ),
                text: "Save countless posts"),
            SizedBox(
              height: 20.h,
            ),
            drawerRow(
                sizedBoxWidth: 15,
                padding: 20,
                onTap: () {},
                widget: Image.asset(
                  "assets/Icons/graph.png",
                  height: 25.h,
                  width: 15,
                ),
                text: "Access content analytics"),
            Spacer()
          ],
        ),
      ),
    );
  }
}
