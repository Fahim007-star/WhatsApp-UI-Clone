import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class CallsScreen extends StatelessWidget {
  var callContent = [
    {
      "name": "Micheal",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP66xZe_6NzZqJBWm79x8S2MHyt4QklAK-9-jQ-IRAFw&s=10",
      "calltime": "30 min ago",
    },
    {
      "name": "Franklink",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeGEzgss0xzInqXdkmLyMo3rtp_zuBLA4Bk7Hk7ivQg&s=10",
      "calltime": "20 min ago",
    },
    {
      "name": "Trevor",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUpBCU4pxwErBG7bPRBJZ108qXmg9A6XoreaRrX7rwhw&s=10",
      "calltime": "15 min ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(width: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Recent", height: 18, fontFamily: ""),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      callContent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 18,
                    fontFamily: "",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callContent[index]["calltime"].toString(),
                    height: 16,
                    fontFamily: '',
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Color(0XFF00A884)),
                  ),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
