import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/Sign_up/sign_up_screen.dart';
import 'package:ad_gag/UI/Screens/login/login_screen_viewmodel.dart';
import 'package:ad_gag/UI/Screens/phoneLogin/phonelogin_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginScreenViewModel _loginScreenViewModel = Get.put(LoginScreenViewModel());

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginScreenViewModel>(builder: (context, value, child) {
      return Scaffold(
          body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
              Stack(
                children: [
                  value.loading
                      ? AlertDialog(
                          content: Center(
                            child: LoadingIndicator(
                              colors: [kLightBlueColor],
                              indicatorType: Indicator.ballClipRotatePulse,
                              strokeWidth: 1,
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            GeneralTextField(
                              padding: 20.w,
                              controller: emailcontroller,
                              hintText: "Email",
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Please Enter Your Email");
                                }
                                // reg expression for email validation
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Please Enter a valid email");
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            PasswordCustomTextField(
                              hintText: "Password",
                              controller: passwordController,
                              
                              validator: (value) {
                                RegExp regex = RegExp(r'^.{6,}$');
                                if (value!.isEmpty) {
                                  return ("Password is required for login");
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("Enter Valid Password(Min. 6 Character)");
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.h),
                                  child: const Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                        color: Color(0xFFFF6565), fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            Center(
                              child: customButton1(
                                  text: "LOGIN",
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      value.logIn(emailcontroller.text,
                                          passwordController.text, context);
                                    }
                                    passwordController.clear();
                                  }),
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(height: 53.h),
              InkWell(
                onTap: () {
                  Get.to(SignUp());
                },
                child: Center(
                  child: Text(
                    "SIGN UP",
                    style: kCustomTextTextStyle(16, kLightBlueColor),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(PhoneLogin());
                  },
                  child: Text(
                    "To join the community",
                    style: kCustomTextTextStyle(16, kGreyColor),
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Center(
                child: Text(
                  "Or Continue",
                  style: kGreyTextTextStyle(16),
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: customButton2(
                    text: "Login with Facebook", onPressed: () {}),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ));
    });
  }
}
