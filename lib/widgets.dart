import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Repeatingwidgets {
  static AppBar appbar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      centerTitle: true,
      title: Text(
        'ink stop',
        style: GoogleFonts.sansita(
            color: const Color.fromARGB(255, 165, 70, 243),
            fontSize: 24,
            fontWeight: FontWeight.w700),
      ),
      leading: const Icon(
        Icons.menu_rounded,
        color: Color.fromARGB(255, 181, 112, 238),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        side: BorderSide(color: Color.fromARGB(255, 43, 43, 43)),
      ),
    );
  }
}
