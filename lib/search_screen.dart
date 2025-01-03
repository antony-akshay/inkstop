import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 6,
                ),
                Container(
                  height: 35,
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'doc_id',
                            border: InputBorder.none,
                            hintStyle:
                                GoogleFonts.italiana(color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 165, 70, 243),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
