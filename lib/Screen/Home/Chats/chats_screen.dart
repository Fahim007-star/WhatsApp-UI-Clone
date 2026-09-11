import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screen/Home/Contact/contact_screen.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8KcjKXPhGtaPjUZ66UIo87iIrZJE8HIA1u9v65wvdcg&s=10",
      "Name": "Niloy",
      "Lastmsg": "Lorem ipsum dolor sit",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCWzsDHLwbDRBhLotJwcP3mWTnbnCfEw-BduP8QsG-Lw&s",
      "Name": "Lolip",
      "Lastmsg": "Lorem ipsum dolor sit",
      "time": "07:48 am",
      "msg": "4",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8KcjKXPhGtaPjUZ66UIo87iIrZJE8HIA1u9v65wvdcg&s=10",
      "Name": "Niloy",
      "Lastmsg": "Lorem ipsum dolor sit",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCWzsDHLwbDRBhLotJwcP3mWTnbnCfEw-BduP8QsG-Lw&s",
      "Name": "Lolip",
      "Lastmsg": "Lorem ipsum dolor sit",
      "time": "07:48 am",
      "msg": "4",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8KcjKXPhGtaPjUZ66UIo87iIrZJE8HIA1u9v65wvdcg&s=10",
      "Name": "Niloy",
      "Lastmsg": "Lorem ipsum dolor sit",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCWzsDHLwbDRBhLotJwcP3mWTnbnCfEw-BduP8QsG-Lw&s",
      "Name": "Lolip",
      "Lastmsg": "Lorem ipsum dolor sit",
      "time": "07:48 am",
      "msg": "4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: arrContent[index]["Name"].toString(),
                    height: 14,
                    fontFamily: "",
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrContent[index]["Lastmsg"].toString(),
                    height: 13,
                    fontFamily: "",
                    color: Color(0XFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        fontFamily: "",
                        color: Color(0XFF026500),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0XFF036A01),
                        child: UiHelper.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          fontFamily: "",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactScreen()),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
        ),
      ),
    );
  }
}
