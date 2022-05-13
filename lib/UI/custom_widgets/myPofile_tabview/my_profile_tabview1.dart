import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/MyOwnContent/my_own_content_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/colors.dart';
import '../alertbox_row.dart';
import '../custom_button.dart';

class MyProfileTabview1 extends StatefulWidget {
  MyProfileTabview1({Key? key}) : super(key: key);

  @override
  State<MyProfileTabview1> createState() => _MyProfileTabview1State();
}

class _MyProfileTabview1State extends State<MyProfileTabview1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              color: klightgreyColor,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyOwnContent(
                                    title: "post title here",
                                    image: "assets/Images/Rectangle.png",
                                    profile: "assets/Images/Rectangle.png",
                                  )));
                    },
                    child: Container(
                      width: 80.w,
                      height: 80.h,
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
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Content Title goes here",
                        style: kCustomTextTextStyle(14, kblackColor),
                      ),
                      SizedBox(height: 5.h),
                      myProfileRowText("Collection", "My Own Content"),
                      SizedBox(height: 3.h),
                      myProfileRowText("Tags:", "Lorem,ispm,Amit"),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          myProfileRowIcon("assets/Images/upvote.png", "265"),
                          SizedBox(width: 15.h),
                          myProfileRowIcon(
                              "assets/Icons/downvote_blue.png", "307"),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    content: contentBox(context),
                                  );
                                });
                          },
                          child: Icon(Icons.more_vert)),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/Images/comment.png",
                            height: 15,
                            width: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Text(
                              "39",
                              style: kCustomTextTextStyle(10, kblackColor),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h)
          ],
        );
      }),
    );
  }

  contentBox(context) {
    return Container(
      height: 150.h,
      width: 100.w,
      // padding: const EdgeInsets.only(
      //   left: 20.0,
      //   top: 20.0,
      //   right: 20,
      //   bottom: 20,
      // ),
      // margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: Column(
        children: [
          alertBoxRow(Icons.link, "Copy post Link"),
          SizedBox(height: 18.h),
          alertBoxRow(Icons.share, "Share "),
          SizedBox(height: 18.h),
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context) {
                      return alertDisalogue(context);
                    });
                print("knkdlfksjldjfklskjdlfjksljkl");
              },
              child: alertBoxRow(Icons.delete_forever, "Delete post")),
        ],
      ),
    );
  }
}

Widget alertDisalogue(context) {
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    content: Container(
      height: 190.h,
      width: 100.w,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: Column(
        children: [
          Icon(
            Icons.delete,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 10.h),
          Text("Are you sure to Delete this post"),
          SizedBox(height: 10.h),
          customButton3(
            bordercolor: Colors.red,
            buttonColor: kwhiteColor,
            textcolor: Color(0xFFFF5A5A),
            height: 40.h,
            width: 130.w,
            widget: Text(
              "Delete",
              style: kCustomTextTextStyle(14, Colors.red),
            ),
            text: "",
            onPressed: () {},
          ),
          SizedBox(height: 10.h),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: kCustomTextTextStyle(15, kblackColor),
              ))
        ],
      ),
    ),
  );
}
