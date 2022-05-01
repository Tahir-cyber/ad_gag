import 'package:ad_gag/UI/Screens/otpscreen/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Core/constant/colors.dart';
import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_textfield.dart';
import '../login/login_screen.dart';

class PhoneLogin extends StatefulWidget {
  PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 171.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.h),
              child: Image.asset(
                "assets/Images/logo_blue.png",
                width: 162.h,
                height: 41,
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.h),
              child: const Text(
                "Welcome Back",
                style: TextStyle(color: Color(0xFF707070), fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.h),
              child: const Text(
                "Sign up for Premium Account",
                style: TextStyle(color: Color(0xFF707070), fontSize: 16),
              ),
            ),
            SizedBox(height: 40.h),
            GeneralTextField(
              padding: 20.w,
              controller: nameController,
              hintText: "Full Name",
            ),
            SizedBox(height: 15.h),
            GeneralTextField(
              padding: 20.w,
              controller: phoneController,
              hintText: "Phone Number",
            ),
            SizedBox(
              height: 15.h,
            ),
            GeneralTextField(
              padding: 20.w,
              controller: emailcontroller,
              hintText: "Email",
            ),
            SizedBox(
              height: 15.h,
            ),
            PasswordCustomTextField(
                hintText: "Password", controller: passwordController),
            SizedBox(height: 15.h),
            Center(
              child: customButton1(
                  text: "SIGN UP",
                  onPressed: () {
                    Get.to(OtpVerificationScreen());
                  }),
            ),
            SizedBox(height: 53.h),
            Center(
              child: Text(
                "Already on Adgag?",
                style: kCustomTextTextStyle(16, kGreyColor),
              ),
            ),
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                Get.to(const LoginScreen());
              },
              child: Center(
                child: Text(
                  "SIGN IN",
                  style: kCustomTextTextStyle(16, kLightBlueColor),
                ),
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
