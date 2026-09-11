import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class ContactScreen extends StatelessWidget {
  var contactContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5nVLS7ubsVKZ7LN0_Gp6gn7tyJCNH_uuzM3l9EM0nVg&s=10",
      "name": "Michel",
      "status": "Busy",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRepaZNIM1yhjPXHT5g-BKId7eMilr11s4kePg0tW_HtA&s=10",
      "name": "Franklin",
      "status": "Busy",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxmd-1D2-jxVQKGefT7qwER3dosjyAOVSloVvB_VYd-w&s=10",
      "name": "Travor",
      "status": "Cool",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5nVLS7ubsVKZ7LN0_Gp6gn7tyJCNH_uuzM3l9EM0nVg&s=10",
      "name": "Michel",
      "status": "Busy",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRepaZNIM1yhjPXHT5g-BKId7eMilr11s4kePg0tW_HtA&s=10",
      "name": "Franklin",
      "status": "Busy",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxmd-1D2-jxVQKGefT7qwER3dosjyAOVSloVvB_VYd-w&s=10",
      "name": "Travor",
      "status": "Cool",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "Select Contact",
          height: 16,
          fontFamily: "",
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                contactContent[index]["img"].toString(),
              ),
            ),
            title: UiHelper.CustomText(
              text: contactContent[index]["name"].toString(),
              height: 16,
              fontFamily: "",
              fontWeight: FontWeight.bold,
              color: Color(0XFF000000),
            ),
            subtitle: UiHelper.CustomText(
              text: contactContent[index]["status"].toString(),
              height: 14,
              fontFamily: "",
            ),
          );
        },
        itemCount: contactContent.length,
      ),
    );
  }
}
