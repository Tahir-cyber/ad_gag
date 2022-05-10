import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/constant/custom_textfield_decoration.dart';

Widget iconTextRow(
    {required String text,
    double? padding,
    required IconData iconData,
    required double radius,
    VoidCallback? ontap,
    required Color iconcolor,
    required Color contColor}) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal:padding!=null?padding:20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Container(
          child: InkWell(
            onTap: ontap,
            child: Icon(
              iconData,
              color: iconcolor,
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: const [BoxShadow(blurRadius: 2.0)],
              borderRadius: BorderRadius.circular(radius),
              color: contColor),
        )
      ],
    ),
  );
}

class PostScreenRow extends StatefulWidget {
  PostScreenRow(
      {Key? key, required this.image, required this.text, required this.color})
      : super(key: key);

  String image;
  String text;
  Color color;

  @override
  State<PostScreenRow> createState() => _PostScreenRowState();
}

class _PostScreenRowState extends State<PostScreenRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Container(
            height: 55.h,
            width: 55.w,
            child: Image.asset(widget.image),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          ),
          const Spacer(),
          Text(widget.text),
          const Spacer(
            flex: 14,
          ),
          Container(
              width: 16.w,
              height: 17.h,
              child: Icon(
                Icons.check,
                size: 14.sp,
                color: kwhiteColor,
              ),
              decoration: BoxDecoration(
                color: widget.color,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(5),
              )),
        ],
      ),
    );
  }
}

Widget drawerRow(
    {Widget? widget,
    String? text,
    required double sizedBoxWidth,
    required double padding,
    required VoidCallback onTap}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: InkWell(
      onTap: onTap,
      child: Row(
        children: [
          widget!,
          Column(
            children: [
              SizedBox(width: sizedBoxWidth),
            ],
          ),
          Text(text!, style: kCustomTextTextStyle(12, kGreyColor))
        ],
      ),
    ),
  );
}

Widget upperTitleRow({required String text, required VoidCallback onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      InkWell(onTap: onTap, child: backButton()),
      SizedBox(width: 20.w),
      Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: kblackColor,
        ),
      ),
      const SizedBox(width: 20),
    ],
  );
}

Widget myProfileRowIcon(String image,String text) {
  return Row(
    children: [
      Image.asset(
        image,
        height: 12,
      ),
      Text(
        text,
        style: kCustomTextTextStyle(12.sp, kblackColor),
      )
    ],
  );
}

Widget myProfileRowText(String text1,String text) {
  return Row(
    children: [
       Text(
        text1,
        style: kCustomTextTextStyle(12.sp, kGreyColor),
      ),
      
      Text(
        text,
        style: kCustomTextTextStyle(12.sp, kblackColor),
      )
    ],
  );
}
