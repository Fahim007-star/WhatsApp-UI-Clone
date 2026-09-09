import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  String phoneNumber;
  OtpScreen({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('OTP Screen')));
  }
}
