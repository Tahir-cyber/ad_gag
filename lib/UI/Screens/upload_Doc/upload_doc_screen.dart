import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/post_content/post_content_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UploadDocScreen extends StatefulWidget {
  UploadDocScreen({Key? key}) : super(key: key);

  @override
  State<UploadDocScreen> createState() => _UploadDocScreenState();
}

class _UploadDocScreenState extends State<UploadDocScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Center(
              child: Image.asset(
                "assets/Images/logo_blue.png",
                width: 162.h,
                height: 41,
              ),
            ),
            SizedBox(height: 30.h),
            Text("Almost there!"),
            SizedBox(height: 5.h),
            Center(child: Text("Upload Supporting documents")),
            Center(child: Text("(Pictures Only)")),
            SizedBox(height: 15.h),
            uploaddocContainer(
                context: context,
                text: "Official govt ID, driver's license or Passport",
                buttonontap: () {}),
            SizedBox(height: 15.h),
            uploaddocContainer(
                context: context,
                text:
                    "Official business document, utility bill or\ntax filings",
                buttonontap: () {}),
            SizedBox(height: 25.h),
            Center(
              child: customButton3(
                  text: "",
                  buttonColor: kLightBlueColor,
                  textcolor: kwhiteColor,
                  widget: Text(
                    "submit",
                    style: kCustomTextTextStyle(15, kwhiteColor),
                  ),
                  onPressed: () {
                    Get.to(PostContent());
                  },
                  height: 50.h,
                  width: 0.70.sw),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
