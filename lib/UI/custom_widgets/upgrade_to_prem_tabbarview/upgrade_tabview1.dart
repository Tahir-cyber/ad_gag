import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpgradeTabView1 extends StatefulWidget {
  UpgradeTabView1({Key? key}) : super(key: key);

  @override
  State<UpgradeTabView1> createState() => _UpgradeTabView1State();
}

class _UpgradeTabView1State extends State<UpgradeTabView1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 2,
        ),
        drawerRow(
            sizedBoxWidth: 15,
            padding: 20,
            onTap: () {},
            widget: Icon(
              Icons.file_upload_outlined,
              size: 18.h,
              color: Colors.green,
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
    );
  }
}
