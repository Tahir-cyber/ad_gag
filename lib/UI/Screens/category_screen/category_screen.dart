import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/UI/Screens/new_screen/new_screen_custommodel.dart';
import 'package:ad_gag/UI/custom_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_row.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int? selectIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customButton3(
          buttonColor: kLightBlueColor,
          text: "Save Prefrences",
          textcolor: kwhiteColor,
          widget: Text(""),
          onPressed: () {},
          height: 40,
          width: 0.70.sw),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 45.h),
            upperTitleRow(
                text: "Categories",
                onTap: () {
                  Navigator.pop(context);
                }),
            Expanded(
                child: ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: ((context, index) {
                      ;
                      return Column(
                        children: [
                          Row(
                            children: [
                             ImageContainer(image: articles[index].imageUrl, height: 20, width: 20),
                              SizedBox(width: 15.w),
                              Text(articles[index].name),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectIndex = index;
                                  });
                                },
                                child: selectIndex != index
                                    ? Icon(
                                        Icons.star_outline_rounded,
                                      )
                                    : Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      );
                    })))
          ],
        ),
      ),
    );
  }
}
