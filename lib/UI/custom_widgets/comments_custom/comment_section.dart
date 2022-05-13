import 'package:ad_gag/comment_practice/comment_new_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/colors.dart';
import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../../Model/comment_screen_custom_model.dart';
import '../custom_reply_container.dart';

class CommentSection extends StatefulWidget {
  CommentSection({Key? key}) : super(key: key);

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  final replyController = TextEditingController();
  int? selectIndex;
  List<bool> showComment = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < commentsModel.length; i++) {
      showComment.add(false);
    }
  }

  void showHide(int i) {
    setState(() {
      showComment[i] = !showComment[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemCount: filedata.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            decoration: const BoxDecoration(
              color: kwhiteColor,
              border: Border(bottom: BorderSide(color: kGreyColor, width: 1)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(filedata[index]['pic']),
                  radius: 30.h,
                ),
                Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: 0.73.sw,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Text(
                          filedata[index]['name'],
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          commentsModel[index].date,
                          style: kCustomTextTextStyle(10, kGreyColor),
                        ),
                        Spacer(flex: 8),
                        Image.asset(
                          "assets/Images/upvote.png",
                          height: 10.h,
                          width: 10.w,
                        ),
                        SizedBox(width: 3.w),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            commentsModel[index].view.toString(),
                            style: kCustomTextTextStyle(10, kGreyColor),
                          ),
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
                              filedata[index]['message'],
                              overflow: TextOverflow.ellipsis,
                              style: kCustomTextTextStyle(10, kGreyColor),
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
                                    print(">>>>>>>>>>>>>$selectIndex");
                                  },
                                  child: ReplyContainer2(
                                      iconColor: kGreyColor,
                                      color: kGreyColor,
                                      iconData: Icons.reply,
                                      text: "Reply"),
                                ),
                                SizedBox(width: 6.w),
                                InkWell(
                                  onTap: () {
                                    showHide(index);
                                  },
                                  child: ReplyContainer(
                                      iconData: !showComment[index]
                                          ? Icons.arrow_drop_down
                                          : Icons.arrow_drop_up,
                                      text: "view 27 reply"),
                                )
                              ],
                            )
                          : ReplyContainer3(
                              ontapSuffix: () {
                                print("reply suffix");
                              },
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
                      Visibility(
                        visible: showComment[index],
                        child: Container(
                          width: 0.75.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("data1"),
                              Text("data1"),
                              Text("data1"),
                              Text("data1"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer()
              ],
            ),
          );
        });
  }
}
