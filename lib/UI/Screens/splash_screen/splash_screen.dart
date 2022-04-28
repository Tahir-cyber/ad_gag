import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/custom_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashPostScreen extends StatefulWidget {
  String view;
  String image;
  String comment;
  String upvote;
  String downvote;
  String share;
  SplashPostScreen(
      {Key? key,
      required this.share,
      required this.image,
      required this.view,
      required this.comment,
      required this.downvote,
      required this.upvote})
      : super(key: key);

  @override
  State<SplashPostScreen> createState() => _SplashPostScreenState();
}

class _SplashPostScreenState extends State<SplashPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kwhiteColor,
          elevation: 0,
          title: Text(
            "Back to post",
            style: kBlackTextTextStyle(14),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: kblackColor,
            ),
          ),
          actions: [
            const Icon(
              Icons.file_download_outlined,
              size: 25,
              color: Colors.green,
            ),
            SizedBox(width: 15.w),
            const Icon(
              Icons.notifications_none,
              size: 25,
              color: Color(0xFFECBD00),
            ),
            SizedBox(width: 15.w),
            const Icon(
              Icons.more_vert,
              size: 25,
              color: kGreyColor,
            ),
            SizedBox(width: 5.w)
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Container(
                height: 600.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kLightBlueColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(widget.image)),
                ),
              ),
            ),
            SizedBox(height: 7.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      customContainer(widget.view, widget.upvote),
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
                              widget.downvote,
                              height: 10,
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      customContainer(widget.view, widget.comment)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: shareContainer2(
                      "share",
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
