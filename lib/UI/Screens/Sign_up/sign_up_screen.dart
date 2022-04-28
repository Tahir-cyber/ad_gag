import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/home_screen/home_screen.dart';
import 'package:ad_gag/UI/Screens/login/login_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
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
                "Login to your account",
                style: TextStyle(color: Color(0xFF707070), fontSize: 16),
              ),
            ),
            SizedBox(height: 40.h),
            GeneralTextField(
              padding: 20.w,
              controller: nameController,
              hintText: "Full Name",
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
                    Get.to(HomeScreen());
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
                  "SIGN UP",
                  style: kCustomTextTextStyle(16, kLightBlueColor),
                ),
              ),
            ),
            SizedBox(height: 38.h),
            Center(
              child: Text(
                "Or Continue",
                style: kGreyTextTextStyle(16),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child:
                  customButton2(text: "Login with Facebook", onPressed: () {}),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
