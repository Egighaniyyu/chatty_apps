import 'package:chatty/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  bool read;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.read});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ), // karena memeberi jarak ke samping
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: read
                      ? subtitleTextStyle
                      : subtitleTextStyle.copyWith(
                          color: blackColor,
                          fontWeight: FontWeight.w400,
                        ),
                )
              ],
            ),
            Spacer(),
            Text(
              time,
              style: subtitleTextStyle.copyWith(
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
