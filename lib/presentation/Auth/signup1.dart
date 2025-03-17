import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/presentation/Auth/signup2.dart';

// ignore: must_be_immutable
class SignupPage1 extends StatelessWidget {
  SignupPage1({super.key});

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController aadharno = TextEditingController();

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
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        controller: firstname,
                        decoration: InputDecoration.collapsed(
                            hintText: 'First name',
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
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        controller: lastname,
                        decoration: InputDecoration.collapsed(
                            hintText: 'last name',
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
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        controller: email,
                        decoration: InputDecoration.collapsed(
                            hintText: 'email',
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
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        controller: phone,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Phone',
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
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        controller: aadharno,
                        decoration: InputDecoration.collapsed(
                            hintText: 'aadhar no',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.averiaSansLibre(
                                color: Colors.grey)),
                      ),
                    ),
                  ),
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignupPage2(
                            firstname: firstname.text,
                            lastname: lastname.text,
                            phone: phone.text,
                            email: email.text,
                            aadharno: aadharno.text,
                            )));
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
                      'next',
                      style: GoogleFonts.italiana(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 17,
                      ),
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
