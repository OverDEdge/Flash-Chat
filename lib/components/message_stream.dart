import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/components/message_bubble.dart';

class MessageStream extends StatelessWidget {
  final String user;
  final Stream<QuerySnapshot> stream;

  MessageStream({this.user, this.stream});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (context, snapshot) {
        if (!snapshot.hasData || user == '') {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data.documents;
        List<MessageBubble> messageBubbles = [];
        for (var message in messages) {
          final String messageText = message.data['text'];
          final String messageSender = message.data['sender'];

          messageBubbles.add(
            MessageBubble(
              sender: messageSender,
              message: messageText,
              isActiveUser: user == messageSender,
            ),
          );
        }
        return Expanded(
          child: ListView(
            reverse: true, // Make ListView sticky to the end
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}
