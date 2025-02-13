import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/search_bloc/search_bloc.dart';
import 'package:inkstop/presentation/components/widgets.dart';
import 'package:inkstop/presentation/doc_details/doc_details.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  TextEditingController docid = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
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
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Document name',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.averiaSansLibre(
                              color: const Color.fromARGB(255, 197, 190, 190),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(onTap: () {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchEvent.searchButtonPressed(docid: docid.text));
              }, child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(186, 24, 43, 212),
                              Color.fromARGB(255, 13, 72, 121), // Black color
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          color: const Color.fromARGB(255, 165, 70, 243),
                          borderRadius: BorderRadius.circular(10)),
                      child: state.isSubmitting
                          ? Center(
                              child: LoadingAnimationWidget.stretchedDots(
                              size: 30,
                              color: const Color.fromARGB(255, 181, 112, 238),
                            ))
                          : const Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                              size: 40,
                            ));
                },
              )),
              const SizedBox(
                height: 15,
              ),
              BlocConsumer<SearchBloc, SearchState>(
                listener: (context, state) {
                  state.succesFailure.fold(() {}, (val) {
                    val.fold((failure) {
                      final message = failure.maybeWhen(
                          orElse: () => 'some error occured',
                          serverFailure: () => 'server failure!',
                          cancelledByUser: () => 'cancelled by user!',
                          notFound: () => 'user not found!');
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                        message,
                        style: const TextStyle(color: Colors.indigo),
                      )));
                    }, (success) {});
                  });
                },
                builder: (context, state) {
                  if (state.isSubmitting) {
                    return Container();
                  } else if (state.data.isEmpty) {
                    return const Text('',
                        style: TextStyle(color: Colors.white));
                  } 
                  else {
                    final doc = state.data.first;
                    return ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DocDetails(data: state.data))),
                      leading: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 10,
                      ),
                      title: Text(
                        doc.docId,
                        style: GoogleFonts.averiaSansLibre(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromARGB(255, 156, 153, 153)),
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
