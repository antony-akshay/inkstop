import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/presentation/components/chip.dart';
import 'package:inkstop/presentation/components/widgets.dart';

class Newdoc extends StatelessWidget {
  Newdoc({super.key});

  final List<String> _chipsList = [];

  void _onChipInputChanged(List<String> chips, String currentText) {
    print('Chips: ${chips.join(', ')}');
    _chipsList.clear();
    _chipsList.addAll(chips);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 153, 149, 149),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Document name',
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.italiana(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 153, 149, 149),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Subject',
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.italiana(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 153, 149, 149),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: TextFormField(
                        style: GoogleFonts.arvo(
                            color: Colors.white, fontWeight: FontWeight.w500),
                        maxLines:
                            null, // Allows the field to grow vertically as needed
                        minLines: 1, // Ensures it starts with at least one line
                        decoration: InputDecoration.collapsed(
                          hintText: 'Content',
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.italiana(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Add EditableChipFieldExample below the text fields
              ChipInputInTextField(
                onChanged: _onChipInputChanged,
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
                  child: Center(
                      child: Text(
                    'create',
                    style: GoogleFonts.permanentMarker(color: Colors.white),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
