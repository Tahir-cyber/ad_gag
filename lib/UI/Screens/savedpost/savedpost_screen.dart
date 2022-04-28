import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/UI/custom_widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/constant/custom_textfield_decoration.dart';
import '../../custom_widgets/custom_container.dart';
import '../Alert/alert_screen.dart';
import '../new_screen/new_screen_custommodel.dart';

class SavedPostScreen extends StatefulWidget {
  SavedPostScreen({Key? key}) : super(key: key);

  @override
  State<SavedPostScreen> createState() => _SavedPostScreenState();
}

class _SavedPostScreenState extends State<SavedPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            upperTitleRow(
                text: "Saved Posts",
                onTap: () {
                  Navigator.pop(context);
                }),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: 410.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFBFBFB),
                      border: Border(
                          bottom: BorderSide(color: kGreyColor, width: 1)),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 10.h),
                                //main row
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(articles[index].imageUrl),
                                      radius: 30.h,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    //column for title and info
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              articles[index].name,
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10.h,
                                            ),
                                           
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.language,
                                                  color: kGreyColor,
                                                  size: 10,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  articles[index].web,
                                                  style: kCustomTextTextStyle(
                                                      12, kGreyColor),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10.h,
                                            ),
                                            Icon(
                                              Icons.location_on,
                                              color: kGreyColor,
                                              size: 10.sp,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              articles[index].location,
                                              style: kCustomTextTextStyle(
                                                  10, kGreyColor),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Spacer(),

                                    Center(
                                      child: Image.asset(
                                        "assets/Icons/savepost.png",
                                        height: 15.h,
                                        width: 10.w,
                                      ),
                                    ),
                                    const AlertScreen()
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                      width: 100.w,
                                      child: SingleChildScrollView(
                                        physics: const ScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                          articles[index].title,
                                          style: kBlackTextTextStyle(16),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              articles[index].category,
                                              style: kCustomTextTextStyle(
                                                  10, kGreyColor),
                                            ),
                                            const Icon(
                                              Icons.share,
                                              size: 10,
                                              color: kGreyColor,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.r),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 12.w,
                                  height: 250.h,
                                  child: Card(
                                    child: Image.asset(
                                      articles[index].imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  customContainer(
                                      articles[index].view.toString(),
                                      "assets/Images/upvote.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 20.w,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/Images/downvote.png",
                                          height: 10,
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: customContainer(
                                        articles[index].view.toString(),
                                        "assets/Images/comment.png"),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: shareContainer2(
                                  "share",
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
