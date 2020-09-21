import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String message;
  final bool isActiveUser;

  MessageBubble({this.sender, this.message, this.isActiveUser});

  @override
  Widget build(BuildContext context) {
    /* Using isActiveUser to determine left or right alignment
       and the color of the message bubble
    */
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isActiveUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
            textAlign: isActiveUser ? TextAlign.right : TextAlign.left,
          ),
          Bubble(
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.right,
            ),
            color: isActiveUser ? Colors.tealAccent : Colors.lightBlueAccent,
            margin: BubbleEdges.all(0.0),
            nip: isActiveUser ? BubbleNip.rightTop : BubbleNip.leftTop,
            alignment: isActiveUser ? Alignment.topRight : Alignment.topLeft,
          ),
        ],
      ),
    );
  }
}
