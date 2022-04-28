import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/constant/colors.dart';
import '../../Core/constant/custom_textfield_decoration.dart';

Widget customContainer(String text, String image) {
  return Container(
    height: 20.h,
    width: 50.w,
    decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          image,
          height: 10,
        ),
        Text(
          text,
          style: kBoldTextTextStyle(12, kGreyColor, FontWeight.w500),
        )
      ],
    ),
  );
}

Widget shareContainer2(
  String text,
) {
  return Container(
    height: 20.h,
    width: 55.w,
    decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.share,
          color: kblackColor,
          size: 12,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(text, style: kCustomTextTextStyle(12, kGreyColor))
      ],
    ),
  );
}

Widget ImageContainer({required String image,required double height,required double width}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            )),
        color: kLightBlueColor,
        borderRadius: BorderRadius.circular(10)),
  );
}
