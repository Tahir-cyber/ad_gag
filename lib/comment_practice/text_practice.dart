import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../Core/constant/colors.dart';
import '../UI/custom_widgets/custom_textfield.dart';

class Text1 extends StatefulWidget {
  Text1({Key? key}) : super(key: key);

  @override
  State<Text1> createState() => _TextState1();
}

class _TextState1 extends State<Text1> {
  String? data = 'data';
  final commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<Text11>(context, listen: true);
    print(model.data);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Text("${model.data}"),
          SizedBox(
            height: 10.h,
          ),
          GeneralTextField(
              prefIconColor: kGreyColor,
              padding: 0.w,
              suffixIcon: Icons.send,
              prefixIcon: Icons.camera_alt,
              hintText: "Post Comment...",
              controller: commentController,
              ontapSuffix: () {
                print("camera");
              },
              replyontap: () {
                model.setData(commentController.text.toString());
              }),
        ],
      ),
    );
  }
}

class Text11 extends ChangeNotifier {
  String data = 'data';

  void setData(String data) {
    this.data = data;
    notifyListeners();
  }
}
