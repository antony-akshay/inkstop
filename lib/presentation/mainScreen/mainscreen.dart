import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:inkstop/presentation/doc_create/newdoc.dart';
import 'package:inkstop/presentation/history_screen/history_screen.dart';
import 'package:inkstop/presentation/notification/notification_screen.dart';
import 'package:inkstop/presentation/search_screen/search_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  int currentIndex = 0;
  String username = "Loading..."; // Default value before fetching

  @override
  void initState() {
    super.initState();
    loadUsername(); // Fetch username when screen loads
  }

  // Function to get username from SharedPreferences
  Future<void> loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      print(username);
      username = prefs.getString("username") ?? "Guest";

      print("user name isnide main screen is $username"); // Default to 'Guest' if null
    });
  }

  @override
  Widget build(BuildContext context) {
    // Ensure pages get updated username
    print("navbar $username");
    final List<Widget> pages = [
      HistoryScreen(username: username),
      Newdoc(username: username),
      SearchScreen(),
      NotificationScreen(username: username),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(186, 24, 43, 212),
        backgroundColor: Colors.black, // or any color that matches your theme
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
