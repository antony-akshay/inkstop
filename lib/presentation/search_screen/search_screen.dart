import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/search_bloc/search_bloc.dart';
import 'package:inkstop/presentation/components/widgets.dart';
import 'package:inkstop/presentation/doc_details/doc_details.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

@immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final TextEditingController docid = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Repeatingwidgets.appbar(context, 'Search'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 6),
                    Container(
                      height: 45,
                      width: 360,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 254, 254),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: TextFormField(
                          controller: docid,
                          style: GoogleFonts.averiaSansLibre(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Document ID',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.averiaSansLibre(
                              color: const Color.fromARGB(255, 197, 190, 190),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Search Button
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      if (docid.text.isNotEmpty) {
                        BlocProvider.of<SearchBloc>(context).add(
                          SearchEvent.searchButtonPressed(docid: docid.text),
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(186, 24, 43, 212),
                            Color.fromARGB(255, 13, 72, 121),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: state.isSubmitting
                          ? Center(
                              child: LoadingAnimationWidget.stretchedDots(
                                size: 30,
                                color: Colors.white,
                              ),
                            )
                          : const Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 15),

              // BlocConsumer for showing results
              BlocConsumer<SearchBloc, SearchState>(
                listener: (context, state) {
                  state.succesFailure.fold(() {}, (val) {
                    val.fold((failure) {
                      final message = failure.maybeWhen(
                        orElse: () => 'Some error occurred',
                        serverFailure: () => 'Server failure!',
                        cancelledByUser: () => 'Cancelled by user!',
                        notFound: () => 'Document not found!',
                      );
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          message,
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ));
                    }, (success) {});
                  });
                },
                builder: (context, state) {
                  if (state.isSubmitting) {
                    return const Center(
                        child: CircularProgressIndicator(color: Colors.white));
                  } else if (state.data == null) {
                    return const Text(
                      'Enter a Document ID and search.',
                      style: TextStyle(color: Colors.white),
                    );
                  } else {
                    final doc = state.data;
                    return ListTile(
                      onTap: () {
                        // Extract recipients list
    // List recipients = doc.recipients;

    // print("\nRecipients Details:");
    // for (var recipient in recipients) {
    //   print("Recipient: ${recipient['recipient']}");
    //   print("Status: ${recipient['status']}");
    //   print("Updated At: ${recipient['updated_at']}\n");
    // }r
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DocDetails(data: doc),
                          ),
                        );
                      },
                      leading: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 10,
                      ),
                      title: Text(
                        doc.id,
                        style: GoogleFonts.averiaSansLibre(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
