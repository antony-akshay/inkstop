import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inkstop/application/search_bloc/search_bloc.dart';
import 'package:inkstop/presentation/doc_create/newdoc.dart';
import 'package:inkstop/presentation/search_screen/search_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        ),
      ],
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, themeState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Newdoc(),
          );
        },
      ),
    );
  }
}
