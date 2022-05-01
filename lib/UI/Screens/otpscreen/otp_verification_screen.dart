import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/upload_Doc/upload_doc_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/otp_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OtpVerificationScreen extends StatefulWidget {
  OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
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
            SizedBox(height: 20.h),
            Text(
              "OTP Verification!",
              style: kCustomTextTextStyle(20, kGreyColor),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "AdGag have sent code to you,",
                style: kCustomTextTextStyle(16, kGreyColor),
              ),
            ),
            Center(
              child: Text(
                "Enter that to verify",
                style: kCustomTextTextStyle(16, kGreyColor),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OtpInput(controller: _fieldOne, autoFocus: true),
                OtpInput(controller: _fieldTwo, autoFocus: false),
                OtpInput(controller: _fieldThree, autoFocus: false),
                OtpInput(controller: _fieldFour, autoFocus: false),
              ],
            ),
            Spacer(),
            Center(
              child: customButton3(
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.h),
                          topRight: Radius.circular(30.h),
                        )),
                        context: context,
                        builder: (context) {
                          return bottomSheet();
                        });
                  },
                  text: "",
                  buttonColor: kLightBlueColor,
                  textcolor: kwhiteColor,
                  widget: Text(
                    "Verify OTP",
                    style: kCustomTextTextStyle(16, kwhiteColor),
                  ),
                  height: 50.h,
                  width: MediaQuery.of(context).size.width - 60),
            ),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                "00:52",
                style: kCustomTextTextStyle(12, kblackColor),
              ),
            ),
            Center(
              child: Text(
                "Resend OTP",
                style: kCustomTextTextStyle(12, Colors.red),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Text(
            "OTP Verified",
            style: kCustomTextTextStyle(20, kGreyColor),
          ),
        ),
        Spacer(),
        Center(
          child: Text("In the next step you will upload ",
              style: kCustomTextTextStyle(18, kGreyColor)),
        ),
        Center(
            child: Text("supporting documents",
                style: kCustomTextTextStyle(18, kGreyColor))),
        SizedBox(height: 15.h),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 70,
            child: customButton1(
                minwidth: 150,
                text: "CONTINUE",
                onPressed: () {
                  Get.to(UploadDocScreen());
                }),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
