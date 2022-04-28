import 'package:ad_gag/UI/custom_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/constant/colors.dart';
import '../../Core/constant/custom_textfield_decoration.dart';

class ReplyContainer extends StatefulWidget {
  String text;
  IconData iconData;
  ReplyContainer({Key? key, required this.iconData, required this.text})
      : super(key: key);

  @override
  State<ReplyContainer> createState() => _ReplyContainerState();
}

class _ReplyContainerState extends State<ReplyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            widget.text,
            style: kCustomTextTextStyle(12.sp, kLightBlueColor),
          ),
          Icon(
            widget.iconData,
            size: 18.h,
            color: kLightBlueColor,
          )
        ],
      ),
    );
  }
}

class ReplyContainer2 extends StatefulWidget {
  String text;
  IconData iconData;
  Color? color;
  Color? iconColor;
  ReplyContainer2(
      {Key? key,
      required this.iconData,
      required this.text,
      this.color,
      this.iconColor})
      : super(key: key);

  @override
  State<ReplyContainer2> createState() => _ReplyContainer2State();
}

class _ReplyContainer2State extends State<ReplyContainer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.reply,
            size: 16.h,
            color: widget.iconColor,
          ),
          SizedBox(
            width: 3.w,
          ),
          Text(
            "Reply",
            style: kCustomTextTextStyle(12.sp, widget.color!),
          ),
        ],
      ),
    );
  }
}

class ReplyContainer3 extends StatefulWidget {
  String hinttext;
  VoidCallback? replyontap;
  TextEditingController controller;
  ReplyContainer3({Key? key, required this.hinttext, required this.controller,this.replyontap})
      : super(key: key);

  @override
  State<ReplyContainer3> createState() => _ReplyContainer3State();
}

class _ReplyContainer3State extends State<ReplyContainer3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReplyContainer2(
            iconColor: kLightBlueColor,
            color: kLightBlueColor,
            iconData: Icons.reply,
            text: "Reply"),
        SizedBox(
          height: 30,
          width: 250,
          child: GeneralTextField(
            replyontap:widget.replyontap ,
            padding: 0,
            hintText: widget.hinttext,
            controller: widget.controller,
            suffixIcon: Icons.send,
            prefixIcon: Icons.camera_alt,
          ),
        )
      ],
    ));
  }
}
