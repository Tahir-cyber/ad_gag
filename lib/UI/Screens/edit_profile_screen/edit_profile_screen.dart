import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:ad_gag/UI/custom_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_container.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _displayNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _companyController = TextEditingController();
  TextEditingController _countryController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _dateOfBirthController = TextEditingController();
  TextEditingController _collectionController = TextEditingController();
  TextEditingController _abotMeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              upperTitleRow(
                  text: "My Profile",
                  onTap: () {
                    Navigator.pop(context);
                  }),
              SizedBox(height: 40.h),
              Center(
                child: SizedBox(
                  height: 92.h,
                  width: 92.w,
                  child: Stack(
                    children: [
                      ImageContainer(
                          image: "assets/Images/Rectangle.png",
                          height: 85.h,
                          width: 85.w),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: buttonContainer(
                            widget: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.camera_alt,
                                size: 20,
                              ),
                            ),
                            radius: 10,
                            onTap: () {}),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Sansa Stark",
                  style: kCustomTextTextStyle(16, Color(0xFF0D7592)),
                ),
              ),
              SizedBox(height: 10),
              GeneralTextField(
                prefIconColor: kLightBlueColor,
                hintText: "Sansa Stark",
                controller: _nameController,
                padding: 0,
                prefixIcon: Icons.account_circle_outlined,
              ),
              SizedBox(height: 10),
              GeneralTextField(
                prefIconColor: kLightBlueColor,
                hintText: "Display Name",
                controller: _displayNameController,
                padding: 0,
                prefixIcon: Icons.account_circle_outlined,
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "This will be visible with your posts",
                  style: kCustomTextTextStyle(10, kGreyColor),
                ),
              ),
              SizedBox(height: 10),
              GeneralTextField(
                prefIconColor: Color(0xFF0D7592),
                hintText: "sansa@example.com",
                controller: _emailController,
                padding: 0,
                prefixIcon: Icons.email,
              ),
              SizedBox(height: 10),
              GeneralTextField(
                  prefIconColor: kLightBlueColor,
                  hintText: "Company Name",
                  controller: _companyController,
                  padding: 0,
                  prefixIcon: Icons.camera_front_sharp),
              SizedBox(height: 10),
              GeneralTextField(
                  prefIconColor: kLightBlueColor,
                  hintText: "Country",
                  controller: _countryController,
                  padding: 0,
                  prefixIcon: Icons.flag),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButton3(
                      fontSize: 10,
                      text: "Select Gender",
                      buttonColor: klightgreyColor,
                      textcolor: kGreyColor,
                      widget: Image.asset("assets/Icons/gender.png"),
                      onPressed: () {},
                      height: 50.h,
                      width: 170.w,
                      widget2: Icon(Icons.arrow_drop_down)),
                  customButton3(
                      fontSize: 10,
                      text: "Date of Birth",
                      buttonColor: klightgreyColor,
                      textcolor: kGreyColor,
                      widget: Image.asset("assets/Icons/birthday.png"),
                      onPressed: () {},
                      height: 50.h,
                      width: 170.w,
                      widget2: Icon(Icons.arrow_drop_down)),
                ],
              ),
              SizedBox(height: 10),
              GeneralTextField(
                hintText: "Collection Name",
                controller: _collectionController,
                padding: 0,
                prefixIcon: Icons.collections_bookmark_outlined,
                prefIconColor: kLightBlueColor,
              ),
              SizedBox(height: 20),
              editProfileContainer(
                "Online Status",
                30.r,
                klightgreyColor,
                50,
                double.infinity,
              ),
              SizedBox(height: 10),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "About Me",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 100.h),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Color(0xFFF0F0F0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: textButton(
                    onTap: () {},
                    widget: Center(
                      child: Text(
                        "Update Info",
                        style: kCustomTextTextStyle(16, kwhiteColor),
                      ),
                    ),
                    height: 60.h,
                    width: 0.75.sw),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
