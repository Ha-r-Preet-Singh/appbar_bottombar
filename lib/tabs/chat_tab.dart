import 'package:flutter/material.dart';

class ChatTabPage extends StatelessWidget {
  const ChatTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: Center(child: Text("Chats",style: TextStyle(fontSize: 44,color: Colors.white),)),
    );
  }
}
