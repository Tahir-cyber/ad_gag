import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/Alert/alert_screen.dart';
import 'package:ad_gag/UI/Screens/comment_screen/comment_screen.dart';
import 'package:ad_gag/UI/Screens/new_screen/new_screen_viewmodel.dart';
import 'package:ad_gag/UI/Screens/settings_screen/settings_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../splash_screen/splash_screen.dart';

class NewScreen extends StatefulWidget {
  List allerticles;
  NewScreen({Key? key, required this.allerticles}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  int? selectIndex;
  bool isSwitched = false;
  SharedPreferences? _preferences;
  void getPreferences() async {
    _preferences = await SharedPreferences.getInstance();
    setState(() {
      isSwitched = _preferences!.getBool('switch') ?? false;
    });

    print("new screen $isSwitched");
  }

  @override
  void initState() {
    super.initState();
    getPreferences();
  }

  @override
  Widget build(BuildContext context) {
    print("new object");
    return Scaffold(
      floatingActionButton: switchUploadContent != true
          ? Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Container(
                height: 40.h,
                width: 90.w,
                decoration: BoxDecoration(
                    color: kLightBlueColor,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton.icon(
                    onPressed: () {
                      imagePickerOption(context);
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      size: 15,
                      color: kwhiteColor,
                    ),
                    label: Text(
                      "POST",
                      style: kCustomTextTextStyle(12, kwhiteColor),
                    )),
              ),
            )
          : Container(),
      body: ListView.builder(
          itemCount: widget.allerticles.length,
          itemBuilder: (context, index) {
            return Container(
              height: 410.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFFBFBFB),
                border: Border(bottom: BorderSide(color: kGreyColor, width: 1)),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        //main row
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  widget.allerticles[index].imageUrl),
                              radius: 30.h,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            //column for title and info
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      widget.allerticles[index].name,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Text(
                                      widget.allerticles[index].date,
                                      style:
                                          kCustomTextTextStyle(10, kGreyColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.language,
                                          color: kGreyColor,
                                          size: 15.sp,
                                        ),
                                        // const SizedBox(width: 5),
                                        // Text(
                                        //   widget.allerticles[index].web,
                                        //   style: kCustomTextTextStyle(
                                        //       12, kGreyColor),
                                        // ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Container(
                                      height: 15,
                                      child: VerticalDivider(
                                          thickness: 1, color: kGreyColor),
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      color: kGreyColor,
                                      size: 15.sp,
                                    ),
                                    // const SizedBox(width: 5),
                                    // Text(
                                    //   widget.allerticles[index].location,
                                    //   style:
                                    //       kCustomTextTextStyle(10, kGreyColor),
                                    // )
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Spacer(),

                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectIndex = index;
                                });
                                print("index $selectIndex");
                              },
                              child: Center(
                                  child: Image.asset(
                                "assets/Icons/savepost.png",
                                color: selectIndex != index
                                    ? Colors.grey
                                    : Color(0xFFFFCC00),
                                height: 15.h,
                                width: 10.w,
                              )),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            const AlertScreen()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            marqueeContainer(widget.allerticles[index].title),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: SizedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      widget.allerticles[index].category,
                                      style:
                                          kCustomTextTextStyle(10, kGreyColor),
                                    ),
                                    SizedBox(width: 4.w),
                                    Image.asset(
                                      "assets/Icons/category.png",
                                      height: 15.h,
                                      width: 15.w,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(SplashPostScreen(
                            image: widget.allerticles[index].imageUrl,
                            view: widget.allerticles[index].view.toString(),
                            upvote: "assets/Images/upvote.png",
                            downvote: "assets/Images/downvote.png",
                            comment: "assets/Images/comment.png",
                            share: "assets/Images/downvote.png",
                          ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.r),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 12.w,
                            height: 250.h,
                            child: Card(
                              child: Image.asset(
                                widget.allerticles[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            customContainer(
                                widget.allerticles[index].view.toString(),
                                "assets/Images/upvote.png"),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: BoxShape.circle,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/Images/downvote.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(CommentOnPostScreen(
                                  date: widget.allerticles[index].date,
                                  title: widget.allerticles[index].title,
                                  category: widget.allerticles[index].category,
                                  web: widget.allerticles[index].web,
                                  name: widget.allerticles[index].name,
                                  image: widget.allerticles[index].imageUrl,
                                  view:
                                      widget.allerticles[index].view.toString(),
                                  upvote: "assets/Images/upvote.png",
                                  downvote: "assets/Images/downvote.png",
                                  comment: "assets/Images/downvote.png",
                                  share: "assets/Images/downvote.png",
                                ));
                              },
                              child: customContainer(
                                  widget.allerticles[index].view.toString(),
                                  "assets/Images/comment.png"),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Share.share(
                                widget.allerticles[index].name.toString());
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: shareContainer2(
                              "share",
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
