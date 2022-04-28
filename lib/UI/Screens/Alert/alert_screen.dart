import 'package:ad_gag/UI/custom_widgets/alertbox_row.dart';
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
