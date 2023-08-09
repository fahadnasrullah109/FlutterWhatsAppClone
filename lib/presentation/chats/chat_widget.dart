import 'package:flutter/material.dart';
import 'package:whats_app_clone/presentation/chats/chat_listing_screen.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});
  @override
  State<StatefulWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  Widget childWidget = const ChatListingScreen();

  @override
  void initState() {
    childWidget = const ChatListingScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childWidget,
    );
  }
}
