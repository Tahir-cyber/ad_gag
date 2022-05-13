import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/UI/custom_widgets/comments_custom/comment_section.dart';
import 'package:ad_gag/UI/custom_widgets/comments_custom/comment_text_field.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../custom_widgets/custom_container.dart';
import '../Alert/alert_screen.dart';

class CommentOnPostScreen extends StatefulWidget {
  String view;
  String image;
  String comment;
  String upvote;
  String downvote;
  String share;
  String name;
  String web;
  String date;
  String title;
  String category;

  CommentOnPostScreen(
      {Key? key,
      required this.category,
      required this.title,
      required this.web,
      required this.date,
      required this.name,
      required this.comment,
      required this.downvote,
      required this.image,
      required this.share,
      required this.upvote,
      required this.view})
      : super(key: key);

  @override
  State<CommentOnPostScreen> createState() => _CommentOnPostScreenState();
}

class _CommentOnPostScreenState extends State<CommentOnPostScreen> {
  TextEditingController commentController = TextEditingController();
  TextEditingController replyController = TextEditingController();
  bool reply = false;
  int? selectIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kwhiteColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kwhiteColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      upperTitleRow(text: "Posted", onTap: () {}),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlertScreen()));
                          },
                          child: Icon(Icons.more_vert))
                    ],
                  ),
                ),
                Container(
                  height: 420.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFBFBFB),
                    border:
                        Border(bottom: BorderSide(color: kGreyColor, width: 1)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        //main row
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(widget.image),
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
                                      widget.name,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Text(
                                      widget.date,
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
                                        const Icon(
                                          Icons.language,
                                          color: kGreyColor,
                                          size: 10,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          widget.web,
                                          style: kCustomTextTextStyle(
                                              12, kGreyColor),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Spacer(),

                            Center(
                              child: Image.asset(
                                "assets/Icons/savepost.png",
                                height: 15.h,
                                width: 10.w,
                              ),
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
                            SizedBox(
                              height: 30.h,
                              width: 100.w,
                              child: SingleChildScrollView(
                                physics: const ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  widget.title,
                                  style: kBlackTextTextStyle(16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: SizedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      widget.category,
                                      style:
                                          kCustomTextTextStyle(10, kGreyColor),
                                    ),
                                    const Icon(
                                      Icons.share,
                                      size: 10,
                                      color: kGreyColor,
                                    )
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.r),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 12.w,
                          height: 250.h,
                          child: Card(
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.cover,
                            ),
                          ),
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
                            Row(
                              children: [
                                customContainer(
                                    widget.view, "assets/Images/upvote.png"),
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
                                customContainer(
                                    widget.view, "assets/Images/comment.png")
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: shareContainer2(
                                "share",
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                //><><><><>   second portion <><><><><<><//
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CommentTextField(),
                ),
                SizedBox(height: 10.h),
                Container(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SizedBox(height: 500.h, child: CommentSection()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
