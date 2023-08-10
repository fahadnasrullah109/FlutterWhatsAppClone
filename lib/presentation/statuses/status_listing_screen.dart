import 'package:flutter/material.dart';
import 'package:whats_app_clone/data/entities/status.dart';
import 'package:whats_app_clone/utils/utils.dart';

class StatusListingScreen extends StatelessWidget {
  const StatusListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: status.length,
          itemBuilder: (context, position) {
            if (status[position].type.name == StatusType.me.name) {
              return const StatusMe();
            } else if (status[position].type.name == StatusType.header.name) {
              return const StatusHeaderWidget(
                header: "Recent updates",
              );
            } else {
              return StatusItemWidget(
                status: status[position],
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 0, 128, 105),
          child: const Icon(
            Icons.photo_camera_outlined,
            color: Colors.white,
          )),
    );
  }
}

class StatusMe extends StatelessWidget {
  const StatusMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/user_me.png"),
                radius: 30,
              ),
              ClipOval(
                child: Material(
                  color: const Color.fromARGB(255, 0, 128, 105), // Button color
                  child: InkWell(
                    splashColor:
                        const Color.fromARGB(100, 0, 128, 105), // Splash color
                    onTap: () {},
                    child: const SizedBox(
                        width: 25,
                        height: 25,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My status",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 27, 34)),
              ),
              Text(
                "Tap to add status update",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 96, 100, 102)),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class StatusHeaderWidget extends StatelessWidget {
  const StatusHeaderWidget({super.key, required this.header});
  final String header;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Text(
        header,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11,
            color: Color.fromARGB(255, 96, 100, 102)),
      ),
    ));
  }
}

class StatusItemWidget extends StatelessWidget {
  const StatusItemWidget({super.key, required this.status});

  final Status status;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 8.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(status.iconPath ?? ""),
              radius: 30,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status.senderTitle ?? "",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 18, 27, 34)),
                ),
                Text(
                  status.timestamp ?? "",
                  style: const TextStyle(
                      fontSize: 11, color: Color.fromARGB(255, 96, 100, 102)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
