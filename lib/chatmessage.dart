import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text, required this.sender});

  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
            Container(
              width: 48,
              height: 48,
              child: Image.asset(sender == "user" ? "assets/user.png": "assets/chat-gpt-logo.jpg"),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              ),
        Expanded(
          child: text.trim().text.bodyText1(context).color(Vx.white).make().px8(),
        ),
      ],
    ).py8();
  }
}
