import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Core/constant/colors.dart';
import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../custom_widgets/custom_button.dart';
import '../upload_Doc/upload_doc_screen.dart';

// class OtpVerification extends ChangeNotifier {
//   verifyPhone(String? verificationCode, String? mobileNumber, context) async {
//     await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: mobileNumber!,
//         verificationCompleted: (PhoneAuthCredential credential) async {
//           await FirebaseAuth.instance
//               .signInWithCredential(credential)
//               .then((value) async {
//             if (value.user != null) {
//               Get.bottomSheet(
//                 bottomSheet(context),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30.h),
//                     topRight: Radius.circular(30.h),
//                   ),
//                 ),
//               );
//             }
//           });
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           print(">>>>>>>>>>>>>>>>${e.message}>>>>>>>>>>>>>");
//         },
//         codeSent: (String? verficationID, int? resendToken) {
//           verificationCode = verficationID;
//           print("code senttttttttttttttttttttttttt");
//           notifyListeners();
//         },
//         codeAutoRetrievalTimeout: (String verificationID) {
//           verificationCode = verificationID;
//           notifyListeners();
//         },
//         timeout: Duration(seconds: 60));
//   }

//   ///>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>?//

// }

Widget bottomSheet(context) {
  return Container(
    color: kwhiteColor,
    height: 400.h,
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Text(
            "OTP Verified",
            style: kCustomTextTextStyle(20, kblackColor),
          ),
        ),
        Spacer(),
        Center(
          child: Text("In the next step you will upload ",
              style: kCustomTextTextStyle(18, kblackColor)),
        ),
        Center(
            child: Text("supporting documents",
                style: kCustomTextTextStyle(18, kblackColor))),
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
    ),
  );
}
