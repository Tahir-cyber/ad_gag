import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/custom_row.dart';

class UpgradedToPremium extends StatefulWidget {
  UpgradedToPremium({Key? key}) : super(key: key);

  @override
  State<UpgradedToPremium> createState() => _UpgradedToPremiumState();
}

class _UpgradedToPremiumState extends State<UpgradedToPremium> {
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
            Text(
              "Upgraded to premium",
              style: kCustomTextTextStyle(14, kblackColor),
            ),
            SizedBox(height: 10.h),
            Text(
              "Premium App Features & Everything\n Unlocked now",
              style: kCustomTextTextStyle(20, kyellowColor),
            ),
            SizedBox(height: 20.h),
            Center(
              child: SizedBox(
                height: 92.h,
                width: 92.w,
                child: Stack(
                  children: [
                    ImageContainer(
                        image: "assets/Images/Rectangle.png",
                        height: 85.h,
                        width: 85.w),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: buttonContainer(
                          widget: Image.asset(
                            "assets/Icons/crown.png",
                            height: 25.h,
                            width: 25.w,
                          ),
                          radius: 10,
                          onTap: () {}),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Text(
                "CONRATULATIONS",
                style: kCustomTextTextStyle(14, kblackColor),
              ),
            ),
            Spacer(),
            Column(
              children: [
                drawerRow(
                    sizedBoxWidth: 15,
                    padding: 20,
                    onTap: () {},
                    widget: Image.asset(
                      "assets/Icons/upload.png",
                      height: 25.h,
                      width: 15,
                    ),
                    text: "Upload Your Contents"),
                SizedBox(height: 20.h),
                drawerRow(
                    sizedBoxWidth: 15,
                    padding: 20,
                    onTap: () {},
                    widget: Image.asset(
                      "assets/Icons/ads_remove.png",
                      height: 25.h,
                      width: 15,
                    ),
                    text: "All ads removed now"),
                SizedBox(height: 20.h),
                drawerRow(
                    sizedBoxWidth: 15,
                    padding: 20,
                    onTap: () {},
                    widget: Image.asset(
                      "assets/Icons/savepost.png",
                      height: 25.h,
                      width: 15,
                    ),
                    text: "SAVE COUNTLESS POSTS"),
                SizedBox(height: 20.h),
                drawerRow(
                    sizedBoxWidth: 15,
                    padding: 20,
                    onTap: () {},
                    widget: Image.asset(
                      "assets/Icons/badge.png",
                      height: 25.h,
                      width: 15,
                    ),
                    text: "PRO BADGE ON PROFILE NOW"),
              ],
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
