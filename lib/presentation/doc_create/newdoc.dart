import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/newbloc_bloc/newdoc_bloc.dart';
import 'package:inkstop/presentation/components/chip.dart';
import 'package:inkstop/presentation/components/widgets.dart';

@immutable
// ignore: must_be_immutable
class Newdoc extends StatelessWidget {
  Newdoc({super.key});

  TextEditingController docname = TextEditingController();
  TextEditingController docSubject = TextEditingController();
  TextEditingController docContent = TextEditingController();
  final List<String> _chipsList = [];

  void _onChipInputChanged(List<String> chips, String currentText) {
    // print('Chips: ${chips.join(', ')}');
    _chipsList.clear();
    _chipsList.addAll(chips);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 360,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 153, 149, 149),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: TextFormField(
                          controller: docname,
                          style: GoogleFonts.arvo(
                              color: Colors.white, fontWeight: FontWeight.w500),
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
                      width: 360,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 153, 149, 149),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: TextFormField(
                          controller: docSubject,
                          style: GoogleFonts.arvo(
                              color: Colors.white, fontWeight: FontWeight.w500),
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
                      width: 360,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 153, 149, 149),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: TextFormField(
                          controller: docContent,
                          style: GoogleFonts.arvo(
                              color: Colors.white, fontWeight: FontWeight.w500),
                          maxLines:
                              null, // Allows the field to grow vertically as needed
                          minLines:
                              1, // Ensures it starts with at least one line
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
                GestureDetector(
                  onTap: () {
                    print(docContent.text);
                    print(_chipsList);
                    BlocProvider.of<NewdocBloc>(context).add(
                        NewdocEvent.createButtonPressed(
                            docname: docname.text,
                            docSubject: docSubject.text,
                            docContent: docContent.text,
                            recipients: _chipsList));
                  },
                  child: BlocConsumer<NewdocBloc, NewdocState>(
                    listener: (context, state) {
                      state.successFailure.fold(() {}, (val) {
                        val.fold((failure) {
                          final message = failure.maybeWhen(
                            orElse: () => 'some error occured!',
                            userDoesNotExist: () => ' does not exist!',
                            serverFailure: () => 'server failure!',
                            cancelledByUser: () => 'cancelled by user!',
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message)));
                        }, (success) {});
                      });
                    },
                    builder: (context, state) {
                      return Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 165, 70, 243),
                              borderRadius: BorderRadius.circular(10)),
                          child: state.isSubmitting
                              ? const Center(
                                  child: CircularProgressIndicator(
                                  color: Colors.white,
                                ))
                              : Center(
                                  child: Text(
                                  'create',
                                  style: GoogleFonts.permanentMarker(
                                      color: Colors.white),
                                )));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
