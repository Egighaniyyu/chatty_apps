import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class SenderBubble extends StatelessWidget {
  final imageUrl;
  final text;
  final time;

  SenderBubble({this.imageUrl, this.text, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 11,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: chatTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
