import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class StatusScreen extends StatelessWidget {
  var statusContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP66xZe_6NzZqJBWm79x8S2MHyt4QklAK-9-jQ-IRAFw&s=10",
      "name": "Micheal",
      "statustime": "15 min ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeGEzgss0xzInqXdkmLyMo3rtp_zuBLA4Bk7Hk7ivQg&s=10",
      "name": "Franklink",
      "statustime": "1 day ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUpBCU4pxwErBG7bPRBJZ108qXmg9A6XoreaRrX7rwhw&s=10",
      "name": "Trevor",
      "statustime": "2 hr ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Status", height: 20, fontFamily: ""),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSivqzwSfPPeoRo9H3HEpyrL-37HVzRV_EH4cJDs4Yjqg&s=10",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF008069),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Color(0XFFFFFFFF),
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.CustomText(
              text: "My Status",
              height: 20,
              fontFamily: "",
            ),
            subtitle: UiHelper.CustomText(
              text: "Tap to add status update",
              height: 15,
              fontFamily: "",
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(
                  text: "Recent Updates",
                  height: 10,
                  fontFamily: "",
                ),
                Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      statusContent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: statusContent[index]["name"].toString(),
                    height: 16,
                    fontFamily: "",
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              itemCount: statusContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
