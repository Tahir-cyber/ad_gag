import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Model/comment_screen_custom_model.dart';
import 'package:ad_gag/UI/custom_widgets/custom_reply_container.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_textfield.dart';
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
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/Images/6.png"),
                            radius: 30.h,
                          ),
                          Spacer(flex: 4),
                          SizedBox(
                            height: 50.h,
                            width: 0.75.sw,
                            child: GeneralTextField(
                              padding: 0.w,
                              hintText: "Post Comment....",
                              controller: commentController,
                              suffixIcon: Icons.send,
                              prefixIcon: Icons.camera_alt,
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(),

                      //second list view comment section
                      SizedBox(
                        height: 500.h,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: commentsModel.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: const BoxDecoration(
                                  color: kwhiteColor,
                                  border: Border(
                                      bottom: BorderSide(
                                          color: kGreyColor, width: 1)),
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          commentsModel[index].imageUrl),
                                      radius: 30.h,
                                    ),
                                    Spacer(
                                      flex: 2,
                                    ),
                                    SizedBox(
                                      width: 0.73.sw,
                                      height: 100.h,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(children: [
                                            Text(
                                              commentsModel[index].name,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              commentsModel[index].date,
                                              style: kCustomTextTextStyle(
                                                  10, kGreyColor),
                                            ),
                                            Spacer(),
                                            Image.asset(
                                              "assets/Images/upvote.png",
                                              height: 10.h,
                                              width: 10.w,
                                            ),
                                            SizedBox(width: 3.w),
                                            Text(
                                              commentsModel[index]
                                                  .view
                                                  .toString(),
                                              style: kCustomTextTextStyle(
                                                  10, kGreyColor),
                                            ),
                                            SizedBox(width: 10.w),
                                            Image.asset(
                                              "assets/Images/downvote.png",
                                              height: 10.h,
                                              width: 10.w,
                                            ),
                                          ]),
                                          SizedBox(height: 3),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 0.45.sw,
                                                child: Text(
                                                  commentsModel[index].desc,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: kCustomTextTextStyle(
                                                      10, kGreyColor),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 3),
                                          selectIndex != index
                                              ? Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          selectIndex = index;
                                                        });
                                                        print(
                                                            ">>>>>>>>>>>>>$selectIndex");
                                                      },
                                                      child: ReplyContainer2(
                                                          iconColor: kGreyColor,
                                                          color: kGreyColor,
                                                          iconData: Icons.reply,
                                                          text: "Reply"),
                                                    ),
                                                    SizedBox(width: 6.w),
                                                    ReplyContainer(
                                                        iconData: Icons
                                                            .arrow_drop_down,
                                                        text: "view 27 reply")
                                                  ],
                                                )
                                              : ReplyContainer3(
                                                  replyontap: () {
                                                    setState(() {
                                                      selectIndex != index
                                                          ? selectIndex = index
                                                          : selectIndex = -1;
                                                    });

                                                    print("send tapped");
                                                  },
                                                  hinttext: "@asebila",
                                                  controller: replyController),
                                        ],
                                      ),
                                    ),
                                    Spacer()
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
