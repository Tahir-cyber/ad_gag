import 'package:ad_gag/UI/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const AdGig());
}

class AdGig extends StatelessWidget {
  const AdGig({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(422, 776),
      builder: (context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'AdGig',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
