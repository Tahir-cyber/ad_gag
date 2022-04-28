import 'package:ad_gag/Core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitchButton extends StatefulWidget {
  CustomSwitchButton({Key? key}) : super(key: key);

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Switch(
      value: _switch,
      onChanged: (bool newValue) {
        setState(() {
          _switch = newValue;
        });
      },
      activeTrackColor: kLightBlueColor,
      
    ));
  }
}
