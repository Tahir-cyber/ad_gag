import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/custom_widgets/Drawer_custom_Widgets/drawer_custom_container.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h),
            upperTitleRow(
                text: "Settings",
                onTap: () {
                  Navigator.pop(context);
                }),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "General",
              style: kCustomTextTextStyle(20.sp, kblackColor),
            ),
            SizedBox(height: 10.h),
            GeneralSettingContainer(
              text: "Upload Content",
            ),
            SizedBox(height: 20.h),
            GeneralSettingContainer(
              text: "Save countless posts",
            ),
            SizedBox(height: 20.h),
            GeneralSettingContainer(
              text: "Get pro badge on profile",
            ),
            SizedBox(height: 30.h),
            Text(
              "Notifications",
              style: kCustomTextTextStyle(20.sp, kblackColor),
            ),
            SizedBox(height: 10.h),
            NotificationSettingContainer(text: "Turn Off all"),
            SizedBox(height: 20.h),
            NotificationSettingContainer(text: "Upload alerts"),
            SizedBox(height: 20.h),
            NotificationSettingContainer(text: "Upvoted my posts"),
            SizedBox(height: 20.h),
            NotificationSettingContainer(text: "Comments on my Posts"),
          ],
        ),
      ),
    );
  }
}
