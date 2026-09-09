import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Profile info",
              height: 20,
              fontFamily: "",
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Please provide your name and an optional",

              height: 14,
              fontFamily: "regular",
            ),
            UiHelper.CustomText(
              text: "profile photo",

              height: 14,
              fontFamily: "regular",
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
