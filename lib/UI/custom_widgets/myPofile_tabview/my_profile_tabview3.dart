import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/colors.dart';
import '../../../Core/constant/custom_textfield_decoration.dart';

class MyProfileTabview3 extends StatefulWidget {
  MyProfileTabview3({Key? key}) : super(key: key);

  @override
  State<MyProfileTabview3> createState() => _MyProfileTabview3State();
}

class _MyProfileTabview3State extends State<MyProfileTabview3> {
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
                  Container(
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
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Content Title goes here",
                        style: kCustomTextTextStyle(14, kblackColor),
                      ),
                      SizedBox(height: 5.h),
                      myProfileRowText("Collection:  ", "Beautiful People"),
                      SizedBox(height: 3.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Comments:",
                            style: kCustomTextTextStyle(10, kGreyColor),
                          ),
                          Container(
                            width: 200.w,
                            child: Text(
                              " Phasellus iaculis faucibus\n masQuisque sit amet velit\n iaculis faucibus massa",
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: kblackColor, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
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
}
