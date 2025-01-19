import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:inkstop/presentation/doc_create/newdoc.dart';
import 'package:inkstop/presentation/history_screen/history_screen.dart';
import 'package:inkstop/presentation/search_screen/search_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  // Define the pages for each navigation item
  final List<Widget> pages = [
    const HistoryScreen(),
    Newdoc(),
    SearchScreen(),
    const Center(
        child: Text("Notifications Page",
            style: TextStyle(color: Colors.white, fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromRGBO(33, 33, 33, 1),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 165, 70, 243),
        backgroundColor:  Color.fromRGBO(33, 33, 33, 1),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the current index
          });
        },
        items: const [
          Icon(Icons.history, color: Colors.white),
          Icon(Icons.add, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.notification_add, color: Colors.white),
        ],
      ),
      body: pages[currentIndex], // Display the selected page
    );
  }
}
