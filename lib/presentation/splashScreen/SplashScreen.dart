import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inkstop/presentation/Auth/signup1.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  String? finaltoken;

  @override
  void initState() {
    super.initState();
    getValidationData().whenComplete(() async {
      Timer(const Duration(seconds: 3), () {
        // Navigate to the HomeScreen after 3 seconds
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (context) => finaltoken == null
        //         ? const ScreenLogo()
        //         : const BottomNavigation(),
        //   ),
        // );
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => SignupPage1()));
      });
    });
    // Start the timer for the splash screen
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 70, 243),
    );
  }

  Future getValidationData() async {
    // final SharedPreferences pref = await SharedPreferences.getInstance();
    // var token = pref.getString('token');

    // setState(() {
    //   finaltoken = token;
    // });
    // debugPrint(finaltoken);
  }
}
