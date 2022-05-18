import 'dart:async';

import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import 'otp_verification_viewmodel.dart';

class OtpVerificationScreen extends StatefulWidget {
  String mobileNumber;
  OtpVerificationScreen({Key? key, required this.mobileNumber})
      : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _pinPutController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String? verificationCode1;
  final FocusNode _pinPutFocusNode = FocusNode();
  bool onPressedValue = true;
  bool visible = false;
  Timer? timer;

  //>>>>>>>>>>>>>>//
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    verifyPhone();
    startTimeout();
    Future.delayed(Duration(seconds: 60), () {
      if (mounted) {
        setState(() {
          visible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
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
            Pinput(
              length: 6,
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              onCompleted: (pin) async {
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                          verificationId: verificationCode1!, smsCode: pin))
                      .then((value) async {
                    if (value.user != null) {
                      Get.bottomSheet(bottomSheet(context));
                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  _scaffoldkey.currentState!
                      .showSnackBar(SnackBar(content: Text('invalid OTP')));
                }
              },
            ),
            Spacer(),
            // Center(
            //   child: customButton3(
            //       onPressed: () {
            //         showModalBottomSheet(
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(30.h),
            //               topRight: Radius.circular(30.h),
            //             )),
            //             context: context,
            //             builder: (context) {
            //               return bottomSheet(context);
            //             });
            //       },
            //       text: "",
            //       buttonColor: kLightBlueColor,
            //       textcolor: kwhiteColor,
            //       widget: Text(
            //         "Verify OTP",
            //         style: kCustomTextTextStyle(16, kwhiteColor),
            //       ),
            //       height: 50.h,
            //       width: MediaQuery.of(context).size.width - 60),
            // ),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                timerText,
                style: kCustomTextTextStyle(12, kblackColor),
              ),
            ),

            Visibility(
              visible: visible,
              child: Center(
                  child: onPressedValue == true
                      ? TextButton(
                          child: Text('Resend OTP',
                              style: kCustomTextTextStyle(
                                12,
                                kLightBlueColor,
                              )),
                          onPressed: () {
                            print("object");
                            verifyPhone();
                            startTimeout();
                            if (mounted) {
                              setState(() {
                                onPressedValue = false;
                              });
                            }
                            Timer(Duration(seconds: 60), () {
                              if (mounted) {
                                setState(() {
                                  onPressedValue = true;
                                });
                              }
                            });
                          })
                      : Text("")),
            ),

            Spacer()
          ],
        ),
      ),
    );
  }

  // Widget bottomSheet() {
  //   return Container(
  //     color: kwhiteColor,
  //     height: 400.h,
  //     width: MediaQuery.of(context).size.width,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         SizedBox(height: 40.h),
  //         Padding(
  //           padding: EdgeInsets.symmetric(horizontal: 20.h),
  //           child: Text(
  //             "OTP Verified",
  //             style: kCustomTextTextStyle(20, kblackColor),
  //           ),
  //         ),
  //         Spacer(),
  //         Center(
  //           child: Text("In the next step you will upload ",
  //               style: kCustomTextTextStyle(18, kblackColor)),
  //         ),
  //         Center(
  //             child: Text("supporting documents",
  //                 style: kCustomTextTextStyle(18, kblackColor))),
  //         SizedBox(height: 15.h),
  //         Center(
  //           child: SizedBox(
  //             width: MediaQuery.of(context).size.width - 70,
  //             child: customButton1(
  //                 minwidth: 150,
  //                 text: "CONTINUE",
  //                 onPressed: () {
  //                   Get.to(UploadDocScreen());
  //                 }),
  //           ),
  //         ),
  //         SizedBox(
  //           height: 15,
  //         )
  //       ],
  //     ),
  //   );
  // }

  verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: widget.mobileNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Get.bottomSheet(
                bottomSheet(context),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.h),
                    topRight: Radius.circular(30.h),
                  ),
                ),
              );
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          String error = e.message!;
          print(e.message);
          Get.snackbar(
            "Sorry",
            error,
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 5),
            colorText: kwhiteColor,
            backgroundColor: kLightBlueColor,
          );
        },
        codeSent: (String? verficationID, int? resendToken) {
          setState(() {
            verificationCode1 = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            verificationCode1 = verificationID;
          });
        },
        timeout: Duration(seconds: 60));
  }
}
