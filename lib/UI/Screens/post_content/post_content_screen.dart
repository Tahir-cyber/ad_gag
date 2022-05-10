import 'dart:io';

import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/home_screen/home_screen.dart';
import 'package:ad_gag/UI/Screens/new_screen/new_screen_viewmodel.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:ad_gag/UI/custom_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PostContent extends StatefulWidget {
  File? image;
  PostContent({Key? key, this.image}) : super(key: key);
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isVisible = true;

  @override
  State<PostContent> createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  TextEditingController postController = TextEditingController();
  TextEditingController tagController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  iconTextRow(
                      padding: 20.w,
                      ontap: () {
                        setState(() {
                          Get.offAll(HomeScreen());
                        });
                      },
                      text: "Post Your content",
                      iconData: Icons.close,
                      radius: 50.0,
                      iconcolor: const Color(0xFFFF7171),
                      contColor: kwhiteColor),
                  SizedBox(height: 10.h),
                  PostTextFiel(
                      hintText: "Enter Post Title", controller: postController),
                  const SizedBox(
                    height: 10,
                  ),
                  GeneralTextField(
                      padding: 20.0,
                      hintText: "Tags",
                      controller: tagController),
                  SizedBox(height: 10.5.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "Enter comma separated words",
                      style: kCustomTextTextStyle(10, kGreyColor),
                    ),
                  ),
                  SizedBox(height: 10.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customButton3(
                          buttonColor: klightgreyColor,
                          textcolor: kGreyColor,
                          width: 170.w,
                          height: 50.h,
                          widget: Icon(
                            Icons.location_on,
                            color: kGreyColor,
                          ),
                          text: "Location",
                          onPressed: () {}),
                      SizedBox(width: 35.w),
                      customButton3(
                          buttonColor: klightgreyColor,
                          textcolor: kGreyColor,
                          width: 170.w,
                          height: 50.h,
                          text: "Website",
                          onPressed: () {},
                          widget: Icon(
                            Icons.language,
                            color: kGreyColor,
                          ))
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Stack(
                    children: [
                      if (widget.isVisible == true)
                        widget.image != null
                            ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Container(
                                  height: 200.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: kLightBlueColor,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(widget.image!,
                                            scale: 2.0)),
                                  ),
                                ),
                              )
                            : Container(
                                height: 200.h,
                                width: double.infinity,
                                child: Icon(Icons.image),
                                decoration: BoxDecoration(
                                  color: kwhiteColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              )
                      else
                        InkWell(
                          onTap: () {
                            imagePickerOption(context);
                          },
                          child: Container(
                            height: 200.h,
                            width: double.infinity,
                            child: Icon(Icons.image),
                            decoration: BoxDecoration(
                              color: kwhiteColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 7.h),
                  iconTextRow(
                      padding: 20.w,
                      text: "Select Content Category",
                      iconData: Icons.search,
                      radius: 5.0,
                      iconcolor: kblackColor,
                      contColor: const Color(0xFFF0F0F0)),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isChecked = !widget.isChecked;
                      });
                    },
                    child: PostScreenRow(
                      color: widget.isChecked == true
                          ? kLightBlueColor
                          : Colors.transparent,
                      text: "Cars",
                      image: "assets/Images/car.png",
                    ),
                  ),
                  SizedBox(height: 7.h),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isChecked1 = !widget.isChecked1;
                      });
                    },
                    child: PostScreenRow(
                      color: widget.isChecked1 == true
                          ? kLightBlueColor
                          : Colors.transparent,
                      text: "Politics",
                      image: "assets/Images/earth.png",
                    ),
                  ),
                  SizedBox(height: 7.h),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isChecked2 = !widget.isChecked2;
                      });
                    },
                    child: PostScreenRow(
                      color: widget.isChecked2 == true
                          ? kLightBlueColor
                          : Colors.transparent,
                      text: "Girls",
                      image: "assets/Images/girl.png",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: postScreenButton(
                        color: kLightBlueColor,
                        text: "Post",
                        size: 1.sw,
                        onPressed: () {
                          Get.to(HomeScreen());
                        },
                        iconData: Icons.send),
                  )
                ],
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.63,
                right: 15.w,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      widget.isVisible = !widget.isVisible;
                    });
                  },
                  child: Container(
                    child: Icon(
                      Icons.close,
                      color: const Color(0xFFFF7171),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(blurRadius: 2.0)],
                        borderRadius: BorderRadius.circular(20),
                        color: kwhiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
