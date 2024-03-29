import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/Core/constant/custom_textfield_decoration.dart';
import 'package:ad_gag/UI/Screens/Now_premium/now_premium_screen.dart';
import 'package:ad_gag/UI/Screens/home_screen/home_screen.dart';
import 'package:ad_gag/UI/custom_widgets/upgrade_to_prem_tabbarview/upgrade_tabview1.dart';
import 'package:ad_gag/UI/custom_widgets/upgrade_to_prem_tabbarview/upgrade_tabview2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_button.dart';

class UpgradeToPremiumScreen extends StatefulWidget {
  UpgradeToPremiumScreen({Key? key}) : super(key: key);

  @override
  State<UpgradeToPremiumScreen> createState() => _UpgradeToPremiumScreenState();
}

class _UpgradeToPremiumScreenState extends State<UpgradeToPremiumScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  int tabIndex = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    tabController = new TabController(
      length: 2,
      vsync: this,
    );
    tabController!.addListener(() {
      setState(() {
        tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: upgradeFloatingButton(onTap: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.h),
                topRight: Radius.circular(30.h),
              )),
              context: context,
              builder: (context) {
                return bottomSheet();
              });
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Image.asset(
                    "assets/Images/logo_blue.png",
                    width: 162.w,
                    height: 100.h,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: buttonContainer(
                        onTap: () {
                          Get.offAll(HomeScreen());
                        },
                        widget: Icon(
                          Icons.close,
                          size: 25.sp,
                        ),
                        radius: 10),
                  )
                ],
              ),
              Text(
                "Get the Premium App Features \n and Unlock Everything",
                style: kCustomTextTextStyle(18, kyellowColor),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: kwhiteColor,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: TabBar(
                                  labelPadding: EdgeInsets.only(top: 5.h),
                                  controller: tabController,
                                  indicatorColor: kLightBlueColor,
                                  labelColor: Colors.white,
                                  unselectedLabelColor: Colors.white,
                                  tabs: [
                                    Tab(
                                      child: GestureDetector(
                                        onTap: () {
                                          tabController!.index = 0;
                                          if (mounted) {
                                            setState(() {
                                              tabIndex = 0;
                                            });
                                            print("tab index is $tabIndex");
                                          }
                                        },
                                        child: Text(
                                          "30 Posts per month",
                                          style: kCustomTextTextStyle(
                                              12, kblackColor),
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: GestureDetector(
                                        onTap: () {
                                          tabController!.index = 1;
                                          if (mounted) {
                                            setState(() {
                                              tabIndex = 1;
                                            });
                                            print("tab index is $tabIndex");
                                          }
                                        },
                                        child: Center(
                                          child: Text("Unlimited Posts",
                                              style: kCustomTextTextStyle(
                                                12,
                                                kblackColor,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 0.6.sh,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: kwhiteColor, width: 0.5))),
                          child:
                              TabBarView(controller: tabController, children: [
                            UpgradeTabView1(),
                            UpgradeTabview2(),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ])));
  }

  Widget bottomSheet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h),
        Center(
          child: Image.asset(
            "assets/Icons/gopro.png",
            height: 50,
            width: 0.6.sw,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child:
              Text("Card Info ", style: kCustomTextTextStyle(18, kGreyColor)),
        ),
        Center(
          child: Container(
            color: Colors.green[300],
            height: 100,
            width: 0.80.sw,
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width - 70,
              child: customButton3(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  fontSize: 18,
                  text: "Pay Now \$123",
                  buttonColor: kLightBlueColor,
                  textcolor: kwhiteColor,
                  widget: Icon(
                    Icons.lock,
                    color: kwhiteColor,
                  ),
                  onPressed: () {
                    Get.to(NowPremium());
                  },
                  height: 50,
                  width: 0.60.sw)),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
