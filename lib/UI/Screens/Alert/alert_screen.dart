import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/custom_widgets/alertbox_row.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/colors.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                content: contentBox(context),
              );
            });
      },
      child: const Icon(
        Icons.more_vert,
        color: kGreyColor,
      ),
    );
  }

  contentBox(context) {
    return Container(
      height: 270.h,
      width: 245.h,
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
          alertBoxRow(Icons.link, "Copy Link"),
          SizedBox(height: 18.h),
          alertBoxRow(Icons.file_download_outlined, "Save Media "),
          SizedBox(height: 18.h),
          alertBoxRow(Icons.visibility_off, "Don't show this post"),
          SizedBox(height: 18.h),
          alertBoxRow(Icons.repeat, "It’s a repetitive post"),
          SizedBox(height: 18.h),
          alertBoxRow(Icons.thumb_down_alt_outlined, "I don’t like this post"),
          SizedBox(height: 18.h),
          alertBoxRow(Icons.add_circle_outline, "Incorrect section"),
        ],
      ),
    );
  }
}

class AlertScreen2 extends StatefulWidget {
  AlertScreen2({Key? key}) : super(key: key);

  @override
  State<AlertScreen2> createState() => _AlertScreen2State();
}

class _AlertScreen2State extends State<AlertScreen2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                content: contentBox(context),
              );
            });
      },
      child: const Icon(
        Icons.more_vert,
        color: kGreyColor,
      ),
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
