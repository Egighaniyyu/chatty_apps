import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            // supaya bisa scroll dan mengatasi error overflow
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/profile_pic.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Egi Ghaniyyu",
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // kalau cross yang terpengaruh sumbu y, kalau main sebaliknya
                    children: [
                      Text(
                        "Friends",
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/user1.png",
                        name: "Joshuer",
                        text: "Sorry, you’re not my ty...",
                        time: "Now",
                        read: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/user2.png",
                        name: "Gabriella",
                        text: "I saw it clearly and mig...",
                        time: "2:30",
                        read: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group1.png",
                        name: "Jakarta Fair",
                        text: "Why does everyone ca...",
                        time: "11:11",
                        read: true,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group2.png",
                        name: "Angga",
                        text: "Here here we can go...",
                        time: "7:11",
                        read: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group3.png",
                        name: "Bentley",
                        text: "The car which does not...",
                        time: "7:11",
                        read: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
