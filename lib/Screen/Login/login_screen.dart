import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screen/OTP/otp_screen.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneNumberController = TextEditingController();
  String selectedCountry = "Bangladesh";

  List<String> countries = [
    "Bangladesh",
    "India",
    "Pakistan",
    "Nepal",
    "Bhutan",
    "Sri Lanka",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: UiHelper.CustomText(
              text: "Enter your phone number",
              height: 19,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
              fontFamily: 'regular',
            ),
          ),
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "WhatsApp will need to verify your phone",
            height: 16,
            fontFamily: 'regular',
          ),
          UiHelper.CustomText(
            text: "number. Carrier charges may apply.",
            height: 16,
            fontFamily: 'regular',
          ),
          UiHelper.CustomText(
            text: ' What"s my number?',
            height: 16,
            color: Color(0XFF00A884),
            fontFamily: 'regular',
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(child: Text(country), value: country);
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedCountry = newValue!;
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+880",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          login(_phoneNumberController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phoneNumber) {
    if (phoneNumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter your phone number'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpScreen(phoneNumber: phoneNumber),
        ),
      );
    }
  }
}
