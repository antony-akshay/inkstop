import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/presentation/components/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Column(
        children: [
          Repeatingwidgets.appbar(context),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 110,
            width: 405,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 58, 55, 59),
                borderRadius: BorderRadius.circular(11)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 405,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(11),
                          topLeft: Radius.circular(11)),
                      color: Color.fromARGB(255, 46, 45, 46)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Doc Details',
                        style: GoogleFonts.averiaSansLibre(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Doc_id:',
                        style: GoogleFonts.italiana(
                            color: const Color.fromARGB(255, 156, 153, 153)),
                      ),
                      Text(
                        'doc_name:',
                        style: GoogleFonts.italiana(
                            color: const Color.fromARGB(255, 156, 153, 153)),
                      ),
                      Text(
                        'Subject:',
                        style: GoogleFonts.italiana(
                            color: const Color.fromARGB(255, 156, 153, 153)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: 405,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 58, 55, 59),
                borderRadius: BorderRadius.circular(11)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 405,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(11),
                          topLeft: Radius.circular(11)),
                      color: Color.fromARGB(255, 46, 45, 46)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Content',
                        style: GoogleFonts.averiaSansLibre(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            width: 405,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 58, 55, 59),
                borderRadius: BorderRadius.circular(11)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 405,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(11),
                          topLeft: Radius.circular(11)),
                      color: Color.fromARGB(255, 46, 45, 46)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Info',
                        style: GoogleFonts.averiaSansLibre(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'created by:',
                        style: GoogleFonts.averiaSansLibre(
                          fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 156, 153, 153)),
                      ),
                      Text(
                        'created at:',
                        style: GoogleFonts.averiaSansLibre(
                          fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 156, 153, 153)),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            height: 120,
            width: 405,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 58, 55, 59),
                borderRadius: BorderRadius.circular(11)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 405,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(11),
                          topLeft: Radius.circular(11)),
                      color: Color.fromARGB(255, 46, 45, 46)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'recipients',
                        style: GoogleFonts.averiaSansLibre(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 1,
                        width: 405,
                        decoration: BoxDecoration(color: Colors.white),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          )
        ],
      )),
    );
  }
}
