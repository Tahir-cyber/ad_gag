import 'dart:async';

import 'package:ad_gag/UI/Screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    SharedPreferences pref = await SharedPreferences.getInstance();
    var email = pref.getString("email");
    print("Hiii email" + email.toString());
    Timer(Duration(seconds: 3), () {
      email != null
          ? Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomeScreen()))
          : Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    // var firstTime = pref.getString("FirstTime");
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) =>
    //           firstTime == null ? const SplashScreen() : const LoginScreen(),
    //     ));
  }

  // startTime() async {
  //   var duration = Duration(seconds: 2);
  //   return Timer(duration, route);
  // }

  // route() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   var firstTime = pref.getString("FirstTime");
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) =>
  //             firstTime == null ? const SplashScreen() : const LoginScreen(),
  //       ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D7592),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              "assets/Images/logo_white.png",
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Spacer(flex: 2),
            Container(
              height: 30,
              width: 50,
              child: LoadingIndicator(
                colors: [
                  Color(0xFF2995B4),
                  Color(0xFF2995B4),
                  Color(0xFF2995B4),
                ],
                indicatorType: Indicator.ballBeat,
                strokeWidth: 1,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
