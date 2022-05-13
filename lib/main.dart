import 'package:ad_gag/UI/Screens/Sign_up/sign_up_viewmodel.dart';
import 'package:ad_gag/UI/Screens/login/login_screen_viewmodel.dart';
import 'package:ad_gag/UI/Screens/splash_screen.dart';
import 'package:ad_gag/comment_practice/comment.dart';
import 'package:ad_gag/comment_practice/comment_practice.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'comment_practice/text_practice.dart';

var email;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const AdGig());
  SharedPreferences pref = await SharedPreferences.getInstance();
  email = pref.getString('email');
}

class AdGig extends StatelessWidget {
  const AdGig({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignUpViewModel>(
            create: (_) => SignUpViewModel()),
        ChangeNotifierProvider<LoginScreenViewModel>(
          create: (_) => LoginScreenViewModel(),
          

        ),
        ChangeNotifierProvider<Text11>(
            create: (_) => Text11()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(422, 776),
        builder: (context) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'AdGig',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
