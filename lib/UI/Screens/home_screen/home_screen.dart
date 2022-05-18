import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/UI/Screens/Notification_screen/notification_screen.dart';
import 'package:ad_gag/UI/Screens/drawer/drawer.dart';
import 'package:ad_gag/UI/Screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:ad_gag/UI/custom_widgets/custom_button.dart';
import 'package:ad_gag/UI/custom_widgets/search_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../boards/boards_screen.dart';
import '../new_screen/new_screen.dart';
import '../new_screen/new_screen_custommodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController = TextEditingController();
  final GlobalKey _scaffoldKey = new GlobalKey();
  TabController? tabController;
  bool visible = false;

  late List<Article> searchArticles;
  String query = '';

  @override
  void initState() {
    super.initState();

    searchArticles = articles;
  }

  void searchBook(String query) {
    final searchArticle = articles.where((value) {
      final categoryLower = value.category.toLowerCase();
      final authorLower = value.name.toLowerCase();
      final searchLower = query.toLowerCase();

      return categoryLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.searchArticles = searchArticle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          key: _scaffoldKey,
          drawer: CustomDrawer(),
          appBar: visible == false
              ? AppBar(
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          visible = true;
                        });
                      },
                      child: const Icon(
                        Icons.search,
                        size: 25,
                        color: kGreyColor,
                      ),
                    ),
                    SizedBox(width: 10.w),
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
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: () {
                        Get.to(EditProfileScreen());
                      },
                      child: const Icon(
                        Icons.account_circle,
                        size: 25,
                        color: kGreyColor,
                      ),
                    ),
                    SizedBox(width: 10.w)
                  ],
                  backgroundColor: Colors.white,
                  elevation: 0,
                  bottom: TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 15.0.w),
                      isScrollable: true,
                      physics: ScrollPhysics(),
                      indicatorColor: kLightBlueColor,
                      labelColor: Colors.black,
                      labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                      tabs: [
                        Tab(
                          text: "Boards",
                        ),
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
                )
              : AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: Row(
                    children: [
                      Expanded(
                          child: SearchWidget(
                              hintText: "search",
                              text: query,
                              onChanged: searchBook)),
                      buttonContainer(
                          height: 40.h,
                          width: 40.w,
                          widget: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          radius: 20,
                          onTap: () {
                            setState(() {
                              visible = false;
                            });
                          })
                    ],
                  ),
                  actions: [],
                ),
          backgroundColor: const Color(0xFFFFFFFF),
          body: TabBarView(
            children: [
              BoardsScreen(),
              NewScreen(
                allerticles: searchArticles,
              ),
              NewScreen(
                allerticles: searchArticles,
              ),
              NewScreen(
                allerticles: searchArticles,
              ),
              NewScreen(
                allerticles: searchArticles,
              ),
              NewScreen(
                allerticles: searchArticles,
              ),
              NewScreen(
                allerticles: searchArticles,
              ),
            ],
          )),
    );
  }
}
