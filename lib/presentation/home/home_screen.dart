import 'package:flutter/material.dart';
import 'package:whats_app_clone/presentation/calls/call_listing_screen.dart';
import 'package:whats_app_clone/presentation/chats/chat_widget.dart';
import 'package:whats_app_clone/presentation/communities/communities_listing_screen.dart';
import 'package:whats_app_clone/presentation/statuses/status_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ChatWidget(),
    StatusWidget(),
    CommunityListScreen(),
    CallListingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.photo_camera_outlined),
            onPressed: () {},
            color: Colors.white,
            tooltip: 'Camera',
          ),
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
            color: Colors.white,
            tooltip: 'Search',
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
            tooltip: 'More options',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 128, 105),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Color.fromARGB(255, 96, 100, 102),
            ),
            activeIcon: Icon(
              Icons.chat,
              color: Color.fromARGB(255, 18, 27, 34),
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.filter_tilt_shift,
              color: Color.fromARGB(255, 96, 100, 102),
            ),
            activeIcon: Icon(
              Icons.filter_tilt_shift,
              color: Color.fromARGB(255, 18, 27, 34),
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
              color: Color.fromARGB(255, 96, 100, 102),
            ),
            activeIcon: Icon(
              Icons.groups,
              color: Color.fromARGB(255, 18, 27, 34),
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Color.fromARGB(255, 96, 100, 102),
            ),
            activeIcon: Icon(
              Icons.call,
              color: Color.fromARGB(255, 18, 27, 34),
            ),
            label: 'Calls',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 18, 27, 34),
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromARGB(150, 79, 77, 74),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
