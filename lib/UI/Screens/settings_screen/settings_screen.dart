import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/home_screen/home_screen.dart';
import 'package:ad_gag/UI/custom_widgets/Drawer_custom_Widgets/drawer_custom_container.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../new_screen/new_screen_custommodel.dart';

bool? switchUploadContent;
bool? switchsavePost;
bool? switchBadgeToggle;
bool? switchTurnOffAll;
bool? switchuploadAlert;
bool? switchUpvoted;
bool? switchComments;
bool? onToggle;

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  SharedPreferences? _prefs;

  getvalue() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      switchUploadContent = _prefs!.getBool('switch') ?? false;
      switchsavePost = _prefs!.getBool('switch2') ?? false;
    });
    print("upload content $switchUploadContent");
    print("save post $switchsavePost");
  }

  late List<Article> searchArticles;
  String query = '';
  @override
  void initState() {
    super.initState();
    getvalue();

    ;
  }

 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h),
            upperTitleRow(
                text: "Settings",
                onTap: () {
                  Get.to(HomeScreen());
                }),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "General",
              style: kCustomTextTextStyle(20.sp, kblackColor),
            ),
            SizedBox(height: 10.h),
            GeneralSettingContainer(
              onToggleChanged: (value) async {
                SharedPreferences _prefs;
                setState(() {
                  switchUploadContent = value;
                });
                _prefs = await SharedPreferences.getInstance();
                _prefs.setBool("switch", switchUploadContent!);

                print("buuton1 ${switchUploadContent}");
              },
              text: "Upload Content",
              onToggle: switchUploadContent ?? false,
            ),
            SizedBox(height: 20.h),
            GeneralSettingContainer(
              onToggleChanged: (value) async {
                SharedPreferences _prefs;
                setState(() {
                  switchsavePost = value;
                });
                _prefs = await SharedPreferences.getInstance();
                _prefs.setBool("switch2", switchsavePost!);

                print("buuton2 ${switchsavePost}");
              },
              text: "Save countless posts",
              onToggle: switchsavePost ?? false,
            ),
            SizedBox(height: 20.h),
            GeneralSettingContainer(
              onToggleChanged: (value) async {
                SharedPreferences _prefs;
                setState(() {
                  switchBadgeToggle = value;
                });
                _prefs = await SharedPreferences.getInstance();
                _prefs.setBool("switch", switchBadgeToggle!);

                print("buuton3 ${switchBadgeToggle}");
              },
              text: "Get pro badge on profile",
              onToggle: switchBadgeToggle ?? false,
            ),
            SizedBox(height: 30.h),
            Text(
              "Notifications",
              style: kCustomTextTextStyle(20.sp, kblackColor),
            ),
            SizedBox(height: 10.h),
            NotificationSettingContainer(
              onToggleChanged: (value) async {
                SharedPreferences _prefs;
                setState(() {
                  switchTurnOffAll = value;
                });
                _prefs = await SharedPreferences.getInstance();
                _prefs.setBool("switch", switchTurnOffAll!);

                print("buuton3 ${switchTurnOffAll}");
              },
              text: "Turn Off all",
              onToggle: switchTurnOffAll ?? false,
            ),
            SizedBox(height: 20.h),
            NotificationSettingContainer(
              onToggleChanged: (value) async {
                SharedPreferences _prefs;
                setState(() {
                  switchuploadAlert = value;
                });
                _prefs = await SharedPreferences.getInstance();
                _prefs.setBool("switch", switchuploadAlert!);

                print("buutonallert ${switchuploadAlert}");
              },
              text: "Upload alerts",
              onToggle: switchuploadAlert ?? false,
            ),
            SizedBox(height: 20.h),
            NotificationSettingContainer(
              onToggleChanged: (value) async {
                SharedPreferences _prefs;
                setState(() {
                  switchUpvoted = value;
                });
                _prefs = await SharedPreferences.getInstance();
                _prefs.setBool("switch", switchUpvoted!);

                print("buutonupvooted ${switchUpvoted}");
              },
              text: "Upvoted my posts",
              onToggle: switchUpvoted ?? false,
            ),
            SizedBox(height: 20.h),
            NotificationSettingContainer(
              onToggleChanged: (value) async {
                SharedPreferences _prefs;
                setState(() {
                  switchComments = value;
                });
                _prefs = await SharedPreferences.getInstance();
                _prefs.setBool("switch", switchComments!);

                print("buutoncomments ${switchComments}");
              },
              text: "Comments on my Posts",
              onToggle: switchComments ?? false,
            ),
          ],
        ),
      ),
    );
  }
}
