import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/about_us/about_us_screen.dart';
import 'package:ad_gag/UI/Screens/category_screen/category_screen.dart';
import 'package:ad_gag/UI/Screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:ad_gag/UI/Screens/savedpost/savedpost_screen.dart';
import 'package:ad_gag/UI/Screens/settings_screen/settings_screen.dart';
import 'package:ad_gag/UI/Screens/upgrade_to_premium/upgrade_to_premium.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../MyProfile/myprofile_screen.dart';
import '../login/login_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(46),
        bottomRight: Radius.circular(46),
      )),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160.h,
              decoration: BoxDecoration(
                color: kLightBlueColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(46.r),
                  bottomRight: Radius.circular(600.r),
                  bottomLeft: Radius.circular(80.r),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfileScreen(
                                    image: "assets/Images/Rectangle.png",
                                    email: "charlotte22@email.com",
                                    name: "Charlotte")));
                      },
                      child: Container(
                        width: 75.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                          color: kLightBlueColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Image.asset(
                          "assets/Images/Rectangle.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  //>>>>>>>>>>>>>>>>>>//
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(flex: 2),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyProfileScreen(
                                        image: "assets/Images/Rectangle.png",
                                        email: "charlotte22@email.com",
                                        name: "Charlotte",
                                      )));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Charlotte",
                              style: kCustomTextTextStyle(16, kwhiteColor),
                            ),
                            Text(
                              "charlotte22@email.com",
                              style: kCustomTextTextStyle(10, kwhiteColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h),
                      drawerButton(
                          textsize: 10,
                          text: "Edit Profile",
                          color: kwhiteColor,
                          width: 100.w,
                          height: 30.h,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfileScreen()));
                          },
                          textColor: kblackColor),
                      Spacer()
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.close,
                          color: kwhiteColor,
                        ),
                      ),
                      Spacer(flex: 4),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  drawerRow(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SavedPostScreen()));
                    },
                    sizedBoxWidth: 20.w,
                    padding: 25.w,
                    widget: Image.asset(
                      "assets/Icons/savepost.png",
                      height: 20.h,
                    ),
                    text: "Save Post",
                  ),
                  SizedBox(height: 23.h),
                  drawerRow(
                    onTap: () {
                      Get.to(CategoryScreen());
                    },
                    sizedBoxWidth: 15.w,
                    padding: 22.w,
                    widget: Image.asset(
                      "assets/Icons/categories.png",
                      height: 20.h,
                    ),
                    text: "Categories",
                  ),
                  SizedBox(height: 23.h),
                  drawerRow(
                    onTap: () {
                      Get.to(UpgradeToPremiumScreen());
                    },
                    sizedBoxWidth: 15.w,
                    padding: 22.w,
                    widget: Image.asset(
                      "assets/Icons/diamond.png",
                      height: 20.h,
                    ),
                    text: "Upgrade to premium",
                  ),
                  SizedBox(height: 20.h),
                  drawerRow(
                    onTap: () {
                      Get.to(Settings());
                    },
                    sizedBoxWidth: 17.w,
                    padding: 25.w,
                    widget: Image.asset(
                      "assets/Icons/seeting.png",
                      height: 20.h,
                    ),
                    text: "Settings",
                  ),
                  SizedBox(height: 20.h),
                  drawerRow(
                    onTap: () {
                      Share.share("https://play.google.com/store/apps/");
                    },
                    sizedBoxWidth: 20.w,
                    padding: 25.w,
                    widget: Image.asset(
                      "assets/Icons/share.png",
                      height: 20.h,
                    ),
                    text: "Share",
                  ),
                  SizedBox(height: 20.h),
                  drawerRow(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                    sizedBoxWidth: 20.w,
                    padding: 25.w,
                    widget: Image.asset(
                      "assets/Icons/about_icon.png",
                      height: 20.h,
                    ),
                    text: "About Us",
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Container(
                      height: 25.h,
                      width: 70.w,
                      color: Color(0xFFFF5A5A),
                      child: Center(
                        child: Text(
                          "GO PRO",
                          style: kCustomTextTextStyle(12, kwhiteColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: customButton3(
                buttonColor: klightgreyColor,
                textcolor: Color(0xFFFF5A5A),
                height: 50.h,
                width: 130.w,
                widget: Image.asset("assets/Icons/logout.png",
                    height: 25.h, width: 15.w),
                text: "LOGOUT",
                onPressed: () async {
                  FirebaseAuth.instance.signOut();
                  Get.to(LoginScreen());
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.remove("email");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
