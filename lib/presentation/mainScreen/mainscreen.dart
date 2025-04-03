import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:inkstop/presentation/doc_create/newdoc.dart';
import 'package:inkstop/presentation/history_screen/history_screen.dart';
import 'package:inkstop/presentation/notification/notification_screen.dart';
import 'package:inkstop/presentation/search_screen/search_screen.dart';

class Homescreen extends StatefulWidget {
  final String username; // Pass username as an argument

  const Homescreen({super.key, required this.username});

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("Navbar username: ${widget.username}");

    final List<Widget> pages = [
      HistoryScreen(username: widget.username),
      Newdoc(username: widget.username),
      SearchScreen(username: widget.username),
      NotificationScreen(username: widget.username),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(186, 24, 43, 212),
        backgroundColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          Icon(Icons.history, color: Colors.white),
          Icon(Icons.add, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.notification_add, color: Colors.white),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
