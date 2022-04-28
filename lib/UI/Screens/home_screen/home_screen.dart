import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/UI/Screens/Notification_screen/notification_screen.dart';
import 'package:ad_gag/UI/Screens/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../new_screen/new_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  {
  final GlobalKey _scaffoldKey = new GlobalKey();
  TabController? tabController;
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          key: _scaffoldKey,
          drawer: CustomDrawer(),
          appBar: AppBar(
            leading: Builder(
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Image.asset(
                      "assets/Images/menu.png",
                      width: 10,
                      height: 10,
                    ),
                  ),
                );
              },
            ),
            title: SizedBox(
              width: 100,
              child: Image.asset(
                "assets/Images/logo_blue.png",
              ),
            ),
            actions: [
              const Icon(
                Icons.search,
                size: 25,
                color: kGreyColor,
              ),
              SizedBox(width: 15.w),
              InkWell(
                onTap: () {
                  Get.to(NotificationScreen());
                },
                child: const Icon(
                  Icons.notifications_none,
                  size: 25,
                  color: kGreyColor,
                ),
              ),
              SizedBox(width: 15.w),
              const Icon(
                Icons.account_circle,
                size: 25,
                color: kGreyColor,
              ),
            ],
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: const TabBar(
                indicatorColor: kLightBlueColor,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                tabs: [
                  Tab(
                    text: "New",
                  ),
                  Tab(
                    text: "Hot",
                  ),
                  Tab(
                    text: "Cars",
                  ),
                  Tab(
                    text: "Memes",
                  ),
                  Tab(
                    text: "Girls",
                  ),
                  Tab(
                    text: "Pets",
                  ),
                ]),
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          body: const TabBarView(
            children: [
              NewScreen(),
              Text("page 2"),
              Text("page 3"),
              Text("page 4"),
              Text("page 5"),
              Text("page 6"),
            ],
          )),
    );
  }
}
