import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:whats_app_clone/data/entities/call.dart';
import 'package:whats_app_clone/presentation/contact/select_contact_screen.dart';
import 'package:whats_app_clone/utils/utils.dart';

class CallListingScreen extends StatelessWidget {
  const CallListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: calls.length,
            itemBuilder: (context, position) {
              if (calls[position].itemType.name == CallItemType.header.name) {
                return const HeaderWidget();
              } else if (calls[position].itemType.name ==
                  CallItemType.recent.name) {
                return const RecentWidget();
              } else {
                return ItemWidget(
                  call: calls[position],
                );
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: const SelectContactScreen(),
              ),
            );
          },
          backgroundColor: const Color.fromARGB(255, 0, 128, 105),
          child: const Icon(
            Icons.add_call,
            color: Colors.white,
          )),
    );
  }
}

class RecentWidget extends StatelessWidget {
  const RecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        "Recent",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 18, 27, 34),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 0, 128, 105),
              radius: imageRadius,
              child: Icon(
                Icons.link,
                color: Color.fromARGB(255, 248, 248, 249),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create call link",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 18, 27, 34)),
                  ),
                  Text(
                    "Share a link for your WhatsApp call",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 96, 100, 102),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.call});

  final Call call;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(call.iconPath ?? ""),
            radius: imageRadius,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  call.title ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 27, 34),
                  ),
                ),
                Text(
                  call.description ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 96, 100, 102),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Icon(
            call.type.name == CallType.audio.name
                ? Icons.call
                : Icons.video_call,
            color: const Color.fromARGB(255, 0, 128, 105),
          ),
        ],
      ),
    );
  }
}
