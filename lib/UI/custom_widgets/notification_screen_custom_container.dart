import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCustomContainer extends StatefulWidget {
  NotificationCustomContainer({Key? key}) : super(key: key);

  @override
  State<NotificationCustomContainer> createState() =>
      _NotificationCustomContainerState();
}

class _NotificationCustomContainerState
    extends State<NotificationCustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: AssetImage("assets/Images/1.png")),
        SizedBox(width: 15.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Timothy Coffey',
              style: kCustomTextTextStyle(12.sp, kblackColor),
            ),
            Text(
              'Commented on your video',
              style: kCustomTextTextStyle(11.sp, kblackColor),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            "7s ago",
            style: kCustomTextTextStyle(10.sp, kblackColor),
          ),
        ),
      ],
    );
  }
}
