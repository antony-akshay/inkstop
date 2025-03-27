import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/presentation/Auth/login_screen.dart';
import 'package:inkstop/presentation/Auth/signup1.dart';

class Authroute extends StatelessWidget {
  const Authroute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(186, 24, 43, 212),
                        Color.fromARGB(255, 13, 72, 121), // Black color
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    color: const Color.fromARGB(255, 165, 70, 243),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'login',
                    style: GoogleFonts.italiana(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage1()));
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(185, 255, 255, 255),
                        Color.fromARGB(255, 255, 255, 255), // Black color
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    color: const Color.fromARGB(255, 165, 70, 243),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.italiana(
                        color: const Color.fromARGB(186, 24, 43, 212),
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            )
                    ],
                  ),
          )),
    );
  }
}
