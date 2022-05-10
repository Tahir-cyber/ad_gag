import 'package:ad_gag/Core/constant/colors.dart';
import 'package:ad_gag/UI/custom_widgets/switch_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralSettingContainer extends StatefulWidget {
  String text;
  bool onToggle;
  void Function(bool) onToggleChanged;
  GeneralSettingContainer({Key? key, required this.text,required this.onToggle,required this.onToggleChanged}) : super(key: key);

  @override
  State<GeneralSettingContainer> createState() =>
      _GeneralSettingContainerState();
}

class _GeneralSettingContainerState extends State<GeneralSettingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w),
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(5.r)),
      child: Row(
        children: [
          Icon(
            Icons.lock,
            size: 16,
            color: kLightBlueColor,
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(widget.text,
              style: TextStyle(
                  color: kblackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CustomSwitchButton(onToggle: widget.onToggle,onToggleChanged: widget.onToggleChanged,),
          )
        ],
      ),
    );
  }
}

class NotificationSettingContainer extends StatefulWidget {
  String text;
  bool onToggle;
    void Function(bool) onToggleChanged;

  NotificationSettingContainer({Key? key, required this.text,required this.onToggle,required this.onToggleChanged})
      : super(key: key);

  @override
  State<NotificationSettingContainer> createState() =>
      _NotificationSettingContainerState();
}

class _NotificationSettingContainerState
    extends State<NotificationSettingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(left: 20.w),
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(5.r)),
      child: Row(
        children: [
          SizedBox(
            width: 6.w,
          ),
          Text(widget.text,
              style: TextStyle(
                  color: kblackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CustomSwitchButton(onToggle: widget.onToggle,onToggleChanged: widget.onToggleChanged,),
          )
        ],
      ),
    );
  }
}
