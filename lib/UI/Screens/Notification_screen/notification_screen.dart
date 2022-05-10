import 'package:ad_gag/UI/Screens/home_screen/home_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:ad_gag/UI/custom_widgets/notification_screen_custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Core/constant/colors.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              upperTitleRow(
                  text: "Notifications",
                  onTap: () {
                    Get.to(HomeScreen());
                  }),

              //new section
              SizedBox(height: 15.h),
              Text("New",
                  style: TextStyle(
                    fontSize: 16,
                    color: kblackColor,
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: [
                      NotificationCustomContainer(),
                      SizedBox(height: 7.h),
                    ],
                  ),
                ),
              ),
              Divider(),
              //today section
              Text("Today",
                  style: TextStyle(
                    fontSize: 16,
                    color: kblackColor,
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: [
                      NotificationCustomContainer(),
                      SizedBox(height: 7.h),
                    ],
                  ),
                ),
              ),
              Divider(),
              //this week section
              Text("This week",
                  style: TextStyle(
                    fontSize: 16,
                    color: kblackColor,
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => Column(
                    children: [
                      NotificationCustomContainer(),
                      SizedBox(height: 7.h),
                    ],
                  ),
                ),
              ),
              Divider(),
              //this month section
              Text("This month",
                  style: TextStyle(
                    fontSize: 16,
                    color: kblackColor,
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => Column(
                    children: [
                      NotificationCustomContainer(),
                      SizedBox(height: 7.h),
                    ],
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
