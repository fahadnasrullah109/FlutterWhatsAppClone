import 'package:flutter/material.dart';
import 'package:whats_app_clone/data/entities/call.dart';
import 'package:whats_app_clone/utils/utils.dart';
import 'dart:async';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key, this.call});

  final Call? call;

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  String callStatus = "Ringing";
  final callEndTime = 20;
  final ringingTime = 5;
  int currentTime = 0;
  bool finishScreen = false;
  final delay = 5;
  Timer? timer;

  @override
  void initState() {
    callStatus = "Calling";
    super.initState();
    timer = Timer.periodic(
        Duration(seconds: delay), (Timer t) => handleCallStatus());
  }

  void handleCallStatus() {
    currentTime += delay;
    if (currentTime == ringingTime) {
      setState(() {
        callStatus = "Ringing";
      });
    } else if (currentTime == callEndTime) {
      setState(() {
        callStatus = "No Answer";
        finishScreen = true;
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (finishScreen) {
      Navigator.pop(context);
    }
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/call_bg.png",
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50.0,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.lock,
                              size: 15,
                              color: Color.fromARGB(200, 255, 255, 255),
                            ),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                              width: 8.0,
                            ),
                          ),
                          TextSpan(
                            text: "End-to-end-encrypted",
                            style: TextStyle(
                              color: Color.fromARGB(200, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.call?.iconPath ?? ""),
                      radius: imageRadius * 1.5,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      widget.call?.title ?? '',
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      callStatus,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(200, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: Color.fromARGB(255, 31, 44, 52),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.volume_up,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.videocam,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mic_off,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 232, 29, 67),
                                radius: imageRadius,
                                child: Icon(
                                  Icons.call_end,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
