import 'package:ad_gag/Core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomSwitchButton extends StatefulWidget {
  bool onToggle;
  void Function(bool) onToggleChanged;

  CustomSwitchButton({Key? key, required this.onToggle,required this.onToggleChanged}) : super(key: key);

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  SharedPreferences? prefs;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterSwitch(
      value: widget.onToggle,
      height: 20.h,
      width: 50.w,
      toggleSize: 20.h,
      activeColor: kwhiteColor,
      inactiveColor: kwhiteColor,
      inactiveToggleColor: kGreyColor,
      activeToggleColor: kLightBlueColor,
      onToggle: widget.onToggleChanged
    ));
  }
}


class CustomSwitch2 extends StatefulWidget {
   bool onToggle;
  CustomSwitch2({Key? key,required this.onToggle}) : super(key: key);

  @override
  State<CustomSwitch2> createState() => _CustomSwitch2State();
}

class _CustomSwitch2State extends State<CustomSwitch2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterSwitch(
      value: widget.onToggle,
      height: 20.h,
      width: 50.w,
      toggleSize: 20.h,
      activeColor: kwhiteColor,
      inactiveColor: kwhiteColor,
      inactiveToggleColor: kGreyColor,
      activeToggleColor: kLightBlueColor,
      onToggle: (value) async {
        SharedPreferences _prefs;
        setState(() {
          widget.onToggle = value;
        });
        _prefs = await SharedPreferences.getInstance();
        _prefs.setBool("switchcontent", widget.onToggle);
       
        print("buuton${widget.onToggle}");
      },
    ));
  }
}