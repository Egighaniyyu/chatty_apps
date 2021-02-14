import 'package:chatty/widgets/receiver_bubble.dart';
import 'package:chatty/widgets/sender_bubble.dart';
import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      appBar: AppBar(
        elevation: 0, // menghilangkan shadownya
        backgroundColor: whiteColor,
        toolbarHeight: 115, // mengatur tinggi
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/group1.png",
                  width: 55,
                  height: 55,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jakarta Fair",
                      style: titleTextStyle,
                    ),
                    Text(
                      "14,209 members",
                      style: subtitleTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  "assets/images/btn_call.png",
                  width: 55,
                  height: 55,
                )
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(
              right: 30,
              left: 30,
            ),
            children: [
              SizedBox(
                height: 30,
              ),
              ReceiverBubble(
                imageUrl: "assets/images/user1.png",
                text: "How are ya guys?",
                time: "2:30",
              ),
              SizedBox(
                height: 30,
              ),
              ReceiverBubble(
                imageUrl: "assets/images/user3.png",
                text: "Find here :P",
                time: "3:11",
              ),
              SizedBox(
                height: 30,
              ),
              SenderBubble(
                imageUrl: "assets/images/profile_pic2.png",
                text:
                    "Thinking about how to deal with this client from hell...",
                time: "22:08",
              ),
              SizedBox(
                height: 30,
              ),
              ReceiverBubble(
                imageUrl: "assets/images/user2.png",
                text: "Love them",
                time: "23:11",
              ),
              SizedBox(
                height: 30,
              ),
              ReceiverBubble(
                imageUrl: "assets/images/user1.png",
                text: "Hahaha",
                time: "23:20",
              ),
              SizedBox(
                height: 30,
              ),
              ReceiverBubble(
                imageUrl: "assets/images/user3.png",
                text: "Nice",
                time: "23:40",
              ),
              SizedBox(
                height: 90,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(right: 30, left: 30, bottom: 20),
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type message..',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('tapped');
                    },
                    child: Image.asset(
                      'assets/images/btn_send.png',
                      width: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
