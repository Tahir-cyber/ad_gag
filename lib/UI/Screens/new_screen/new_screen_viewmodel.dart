import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Core/constant/colors.dart';
import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../custom_widgets/custom_button.dart';
import '../post_content/post_content_screen.dart';

String? imageUrl;
XFile? pickedfile;

//image Picker
File? imageFile;

final picker = ImagePicker();

Future pickImage(ImageSource source, context) async {
  //picked image
  pickedfile = await picker.pickImage(source: source);
  if (pickedfile != null) {
    //String filename = pickedFile.name;
    imageFile = File(pickedfile!.path);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PostContent(image: imageFile)));
  } else {
    showSnakBar(context);
  }
}

void imagePickerOption(context) {
  Get.bottomSheet(
    SingleChildScrollView(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: Container(
          color: Colors.white,
          height: 250,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Upload Via",
                  style: kCustomTextTextStyle(18, kblackColor),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buttonContainer2(
                        text: "Camera",
                        widget: Icon(
                          Icons.camera_alt,
                          color: kblackColor,
                        ),
                        radius: 30,
                        onTap: () {
                          pickImage(ImageSource.camera, context);
                          Navigator.pop(context);
                        },
                        height: 100.h,
                        width: 100.w),
                    SizedBox(width: 50.w),
                    buttonContainer2(
                        text: "Gallery",
                        widget: Image.asset(
                          "assets/Icons/gallery.png",
                          height: 30,
                          width: 30,
                        ),
                        radius: 30,
                        onTap: () {
                          pickImage(ImageSource.gallery, context);
                          Navigator.pop(context);
                        },
                        height: 100.h,
                        width: 100.w),
                  ],
                ),
                SizedBox(height: 15.h),
                Text(
                    "Please make sure you content is only Video, GIF and Photos only. ")
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

void showSnakBar(context) {
  final snakbar = SnackBar(
    backgroundColor: kLightBlueColor,
    content: Text("Plz select an Image"),
    duration: Duration(seconds: 3),
  );
  ScaffoldMessenger.of(context).showSnackBar(snakbar);
}
