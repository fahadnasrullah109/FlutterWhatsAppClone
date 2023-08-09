import 'package:flutter/material.dart';
import 'package:whats_app_clone/presentation/statuses/status_listing_screen.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});
  @override
  State<StatefulWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatefulWidget> {
  Widget childWidget = const StatusListingScreen();

  @override
  void initState() {
    childWidget = const StatusListingScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childWidget,
    );
  }
}
