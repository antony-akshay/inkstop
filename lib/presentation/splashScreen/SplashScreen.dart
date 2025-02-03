import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/presentation/Auth/authroute.dart';

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
            MaterialPageRoute(builder: (context) => const Authroute()));
      });
    });
    // Start the timer for the splash screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(185, 0, 26, 255),
                Color.fromARGB(255, 0, 0, 0)
              ], // Gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: 350,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/octo.png'))),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'ink stop',
                  style: GoogleFonts.permanentMarker(
                      letterSpacing: 4,
                      color: const Color.fromARGB(255, 233, 223, 223),
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          )),
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
