import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/Alert/alert_screen.dart';
import 'package:ad_gag/UI/custom_widgets/board_comment.dart/board_comment.dart';
import 'package:ad_gag/UI/custom_widgets/board_comment.dart/board_text_field.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_container.dart';

class BoardGroupChart extends StatefulWidget {
  BoardGroupChart({Key? key}) : super(key: key);

  @override
  State<BoardGroupChart> createState() => _BoardGroupChartState();
}

class _BoardGroupChartState extends State<BoardGroupChart> {
  bool onToggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: BoardCommentTextField(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: backButton()),
                        Expanded(
                            child: ListTile(
                          horizontalTitleGap: 10.w,
                          leading: ImageContainer(
                              image: "assets/Images/b1.png",
                              height: 50.h,
                              width: 50.w),
                          title: Text(
                            'Group Chat',
                            style: kCustomTextTextStyle(14, kblackColor),
                          ),
                          subtitle: Text(
                            '1345 members',
                            style: kCustomTextTextStyle(10, kblackColor),
                          ),
                        )),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(
                                        builder: (context, setState) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        content: boardAlertBox(
                                            context, onToggle, (value) {
                                          setState(() {
                                            onToggle = value;
                                          });
                                        }),
                                      );
                                    });
                                  });
                            },
                            icon: Icon(Icons.more_vert))
                      ],
                    ),
                    Container(
                      child: Divider(
                        color: kblackColor,
                      ),
                    ),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: 0.71.sh,
                        child: BoardComment(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
