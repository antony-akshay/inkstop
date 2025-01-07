import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/search_bloc/search_bloc.dart';
import 'package:inkstop/presentation/components/widgets.dart';
import 'package:inkstop/presentation/doc_details.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  TextEditingController docid = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
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
                      height: 35,
                      width: 400,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: TextFormField(
                            controller: docid,
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
                          color: const Color.fromARGB(255, 165, 70, 243),
                          borderRadius: BorderRadius.circular(10)),
                      child: state.isSubmitting
                          ? const Center(child: CircularProgressIndicator())
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
                    return const CircularProgressIndicator();
                  } else if (state.data.isEmpty) {
                    return const Text('No documents found',
                        style: TextStyle(color: Colors.white));
                  } else {
                    final doc = state.data.first;
                    return ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen(doc: doc,)));
                      },
                      title: Text(
                        'Document ID: ${doc.docId}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: Text('created=${doc.createdBy}'),
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
