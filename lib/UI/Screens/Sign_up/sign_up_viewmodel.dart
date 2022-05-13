import 'package:ad_gag/Core/constant/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_screen/home_screen.dart';

class SignUpViewModel extends ChangeNotifier {
  bool lodaing = false;
  final auth = FirebaseAuth.instance;
  String? uid;
  String? errorMessage;

  void signUp(name, email, password, context) async {
    SharedPreferences pref;
    try {
      lodaing = true;
      notifyListeners();
      await auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) async {
        uid = value.user!.uid;
        print("this is may be uid  $uid");
        await FirebaseFirestore.instance.collection("user").doc(uid).set({
          "name": name,
          "email": email,
          "user_id": uid,
        });
        Fluttertoast.showToast(
            msg: "Registration Successful", backgroundColor: kLightBlueColor);

        Navigator.pushAndRemoveUntil(
            (context),
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false);
        pref = await SharedPreferences.getInstance();
        pref.setString("email", email);
        lodaing = false;
        notifyListeners();
      });
    } catch (e) {
      lodaing = false;
      notifyListeners();
      errorMessage = e.toString();
      Get.snackbar(
        "Sorry",
        errorMessage!,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 3),
        colorText: kwhiteColor,
        backgroundColor: kLightBlueColor,
      );
    }
  }
}

// consumerSignUp(context,model,_)
//{

  // body: model.lodaing?Center(child: CircularProgressIndicator()):Contai
//} {
