import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/presentation/test/createdby.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Repeatingwidgets {
  static AppBar appbar(
      BuildContext context, String texttitle, String username) {
    return AppBar(
      leading: GestureDetector(
        onTap: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.remove('username');
          var a=await prefs.getString("username");
          print(a);
        },
        child: const Icon(
          Icons.menu_rounded,
          color: Colors.white,
          size: 35,
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(185, 0, 0, 0)
            ], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      title: Text(
        texttitle,
        style: GoogleFonts.quicksand(color: Colors.white, fontSize: 22),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      CreatedDocumentsPage(username: username)));
            },
            child: Icon(
              Icons.history_edu_outlined,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
    // AppBar(
    //   flexibleSpace: Container(
    //     decoration: const BoxDecoration(
    //       borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(15),
    //           bottomRight: Radius.circular(15)),
    //       gradient: LinearGradient(
    //         colors: [
    //           Color.fromARGB(255, 0, 0, 0),
    //           Color.fromARGB(186, 24, 43, 212)
    //         ], // Gradient colors
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomRight,
    //       ),
    //     ),
    //   ),
    //   elevation: 0,
    //   toolbarHeight: 150,
    //   backgroundColor: const Color.fromARGB(255, 12, 12, 12),
    //   centerTitle: true,
    //   title: Text(
    //     'ink stop',
    //     style: GoogleFonts.permanentMarker(
    //         letterSpacing: 4,
    //         color: const Color.fromARGB(255, 255, 255, 255),
    //         fontSize: 40,
    //         fontWeight: FontWeight.w700),
    //   ),
    //   leading: const Padding(
    //     padding: EdgeInsets.only(left: 18.0),
    //     child: Icon(
    //       Icons.menu_rounded,
    //       color: Color.fromARGB(186, 24, 43, 212),
    //       size: 40,
    //     ),
    //   ),
    //   shape: const RoundedRectangleBorder(
    //     borderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(0),
    //       topRight: Radius.circular(0),
    //       bottomLeft: Radius.circular(15),
    //       bottomRight: Radius.circular(15),
    //     ),
    //     side: BorderSide(color: Color.fromARGB(255, 43, 43, 43)),
    //   ),
    // );
  }
}
