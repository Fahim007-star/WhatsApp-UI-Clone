import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screen/Profile/profile_screen.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class OtpScreen extends StatelessWidget {
  String phoneNumber;
  OtpScreen({required this.phoneNumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Verifying your number",
              height: 20,
              color: Color(0XFF00A884),
              fontFamily: '',
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: 'You"ve tried to register +880${phoneNumber}',
              height: 15,
              fontFamily: 'regular',
            ),
            UiHelper.CustomText(
              text: 'recently. Wait before requesting an sms or a call.',
              height: 15,
              fontFamily: 'regular',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                  text: "with your code.",
                  height: 15,
                  fontFamily: 'regular',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                    text: "Wrong number?",
                    height: 15,
                    color: Color(0XFF00A884),
                    fontFamily: 'regular',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomerContainer(otp1Controller),
                SizedBox(width: 10),
                UiHelper.CustomerContainer(otp2Controller),
                SizedBox(width: 10),
                UiHelper.CustomerContainer(otp3Controller),
                SizedBox(width: 10),
                UiHelper.CustomerContainer(otp4Controller),
                SizedBox(width: 10),
                UiHelper.CustomerContainer(otp5Controller),
                SizedBox(width: 10),
                UiHelper.CustomerContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: 'Didn"t receive code?',
              height: 15,
              fontFamily: 'regular',
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
