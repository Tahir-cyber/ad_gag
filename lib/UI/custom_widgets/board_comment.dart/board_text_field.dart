import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/colors.dart';
import '../../../comment_practice/comment_new_model.dart';
import '../custom_textfield.dart';

class BoardCommentTextField extends StatefulWidget {
  BoardCommentTextField({Key? key}) : super(key: key);

  @override
  State<BoardCommentTextField> createState() => _BoardCommentTextFieldState();
}

class _BoardCommentTextFieldState extends State<BoardCommentTextField> {
  TextEditingController commentController = TextEditingController();
  TextEditingController replyController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/Images/6.png"),
          radius: 30.h,
        ),
        Spacer(),
        SizedBox(
          height: 40,
          width: 0.70.sw,
          child: Form(
              key: formKey,
              child: GeneralTextField(
                suffixIconColor: kLightBlueColor,
                enabledBorderRadius: 10,
                focusRadius: 10,
                prefIconColor: kGreyColor,
                padding: 0.w,
                suffixIcon: Icons.send,
                prefixIcon: Icons.camera_alt,
                hintText: "Post Comment...",
                controller: commentController,
                ontapSuffix: () {
                  print("camera");
                },
                replyontap: () {
                  setState(() {
                    var value = {
                      'name': 'New User',
                      'pic': 'https://picsum.photos/300/30',
                      'message': commentController.text
                    };
                    filedata.insert(0, value);
                  });
                  commentController.clear();
                  FocusScope.of(context).unfocus();
                },
              )),
        ),
      ],
    );
  }
}
