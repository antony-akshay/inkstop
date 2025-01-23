import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Repeatingwidgets {
  static AppBar appbar(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      centerTitle: true,
      title: Text(
        'ink stop',
        style: GoogleFonts.permanentMarker(
            color: const Color.fromARGB(255, 165, 70, 243),
            fontSize: 40,
            fontWeight: FontWeight.w700),
      ),
      leading: const Padding(
        padding: EdgeInsets.only(left: 18.0),
        child: Icon(
          Icons.menu_rounded,
          color: Color.fromARGB(255, 181, 112, 238),
          size: 40,
        ),
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
