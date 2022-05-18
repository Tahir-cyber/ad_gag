import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/about_party_fun/about_party_fund.dart';
import 'package:ad_gag/UI/Screens/new_screen/new_screen_custommodel.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BoardsScreen extends StatefulWidget {
  BoardsScreen({Key? key}) : super(key: key);

  @override
  State<BoardsScreen> createState() => _BoardsScreenState();
}

class _BoardsScreenState extends State<BoardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: boards.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                          leading: ImageContainer(
                              image: boards[index].iamgeUrl,
                              height: 60.h,
                              width: 60.w),
                          title: Text(
                            boards[index].title,
                            style: kCustomTextTextStyle(14, kblackColor),
                          ),
                          subtitle: Text(
                            boards[index].Subtitle,
                            style: kCustomTextTextStyle(10, kblackColor),
                          ),
                          trailing: buttonContainer3(
                              color: kLightBlueColor,
                              width: 80.w,
                              height: 35.h,
                              widget: Center(
                                  child: Text(
                                "JOIN",
                                style: kCustomTextTextStyle(14, kwhiteColor),
                              )),
                              radius: 40,
                              onTap: () {
                                Get.to(AboutPartyAndFun());
                              })),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Divider(
                          color: kblackColor,
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
