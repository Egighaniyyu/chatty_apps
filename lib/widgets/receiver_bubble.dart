import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ReceiverBubble extends StatelessWidget {
  final imageUrl;
  final text;
  final time;

  ReceiverBubble({this.imageUrl, this.text, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 11,
              ),
              decoration: BoxDecoration(
                color: Color(0xffEAEFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
          )
        ],
      ),
    );
  }
}
