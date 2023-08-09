import 'package:flutter/material.dart';
import 'package:whats_app_clone/utils/utils.dart';

class ChatListingScreen extends StatelessWidget {
  const ChatListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: chats.length,
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8.0,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(chats[position].icon),
                    radius: 30,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                              child: Text(
                            chats[position].title,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 18, 27, 34)),
                          )),
                          Text(
                            chats[position].timestamp,
                            style: const TextStyle(
                                fontSize: 11,
                                color: Color.fromARGB(255, 96, 100, 102)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              chats[position].description,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 96, 100, 102)),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 0, 128, 105),
          child: const Icon(
            Icons.message,
            color: Colors.white,
          )),
    );
  }
}
