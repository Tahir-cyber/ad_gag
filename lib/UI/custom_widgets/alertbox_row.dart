import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget alertBoxRow(IconData iconData, String text) {
  return Row(
    children: [
      Icon(
        iconData,
        color: kGreyColor,
      ),
      SizedBox(
        width: 20.w,
      ),
      Text(
        text,
        style: kGreyTextTextStyle(16),
      )
    ],
  );
}
