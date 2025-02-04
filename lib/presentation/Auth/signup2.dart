import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/presentation/Auth/login_screen.dart';
import 'package:inkstop/presentation/doc_details/doc_details.dart';
import 'package:inkstop/presentation/mainScreen/mainscreen.dart';

class SignupPage2 extends StatelessWidget {
  String firstname;
  String lastname;
  String phone;
  String email;

  SignupPage2(
      {super.key,
      required this.firstname,
      required this.lastname,
      required this.phone,
      required this.email});

  TextEditingController usernameStr = TextEditingController();
  TextEditingController passwordStr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 3, right: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 45,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        controller: usernameStr,
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration.collapsed(
                            hintText: 'username',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.averiaSansLibre(
                                color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 45,
                  width: 360,
                  decoration: BoxDecoration(
                    
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordStr,
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration.collapsed(
                            hintText: 'password',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.averiaSansLibre(
                                color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 20
              ,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => LoginScreen()));
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
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 165, 70, 243),
                    ),
                    child: Center(
                        child: Text(
                      'Sign up',
                      style: GoogleFonts.italiana(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                          color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
