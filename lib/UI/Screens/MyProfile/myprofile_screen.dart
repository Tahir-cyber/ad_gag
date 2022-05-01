import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:ad_gag/UI/custom_widgets/myPofile_tabview/my_profile_tabview1.dart';
import 'package:ad_gag/UI/custom_widgets/myPofile_tabview/my_profile_tabview2.dart';
import 'package:ad_gag/UI/custom_widgets/myPofile_tabview/my_profile_tabview3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/colors.dart';
import '../../custom_widgets/custom_button.dart';
import '../edit_profile_screen/edit_profile_screen.dart';

class MyProfileScreen extends StatefulWidget {
  String image;
  String name;
  String email;

  MyProfileScreen(
      {Key? key, required this.email, required this.image, required this.name})
      : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    tabController = new TabController(
      length: 3,
      vsync: this,
    );
    tabController!.addListener(() {
      setState(() {
        tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            upperTitleRow(
                text: "My Profile",
                onTap: () {
                  Navigator.pop(context);
                }),
            SizedBox(height: 15.h),
            Row(
              children: [
                Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: kLightBlueColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 7.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: kCustomTextTextStyle(18.sp, kblackColor),
                    ),
                    Text(
                      widget.email,
                      style: kCustomTextTextStyle(12.sp, kblackColor),
                    ),
                    Row(
                      children: [
                        Text(
                          "Collection:",
                          style: kCustomTextTextStyle(12.sp, kGreyColor),
                        ),
                        Text(
                          "My Own Content ",
                          style: kCustomTextTextStyle(12.sp, kblackColor),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: drawerButton(
                      textsize: 10,
                      text: "Edit Profile",
                      color: kLightBlueColor,
                      width: 90.w,
                      height: 30.h,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfileScreen()));
                      },
                      textColor: kwhiteColor),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "About",
              style: kCustomTextTextStyle(10, kGreyColor),
            ),
            SizedBox(height: 5.h),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit. In risus neque, commodo quis luctus a, convallis quis sapien.",
              style: kCustomTextTextStyle(12, kblackColor),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: kwhiteColor,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: TabBar(
                                labelPadding: EdgeInsets.only(top: 5.h),
                                controller: tabController,
                                indicatorColor: kLightBlueColor,
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.white,
                                tabs: [
                                  Tab(
                                    child: GestureDetector(
                                      onTap: () {
                                        tabController!.index = 0;
                                        if (mounted) {
                                          setState(() {});
                                        }
                                      },
                                      child: Text(
                                        "My Content ",
                                        style: kCustomTextTextStyle(
                                            12, kGreyColor),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: GestureDetector(
                                      onTap: () {
                                        tabController!.index = 1;
                                        if (mounted) {
                                          setState(() {});
                                        }
                                      },
                                      child: Center(
                                        child: Text("Upvote",
                                            style: kCustomTextTextStyle(
                                              12,
                                              kGreyColor,
                                            )),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: GestureDetector(
                                      onTap: () {
                                        tabController!.index = 2;
                                        if (mounted) {
                                          setState(() {});
                                        }
                                      },
                                      child: Center(
                                        child: Text("Comments",
                                            style: kCustomTextTextStyle(
                                              12,
                                              kGreyColor,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 0.6.sh,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: kwhiteColor, width: 0.5),
                          ),
                        ),
                        child: TabBarView(controller: tabController, children: [
                          SizedBox(height: 200, child: MyProfileTabview1()),
                          SizedBox(
                            height: 200.h,
                            child: MyProfileTabview2(),
                          ),
                          SizedBox(
                            height: 200,
                            child: MyProfileTabview3(),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
