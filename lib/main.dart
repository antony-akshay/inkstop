import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:inkstop/application/history_bloc/history_bloc.dart';
import 'package:inkstop/application/newbloc_bloc/newdoc_bloc.dart';
import 'package:inkstop/application/search_bloc/search_bloc.dart';
import 'package:inkstop/domain/newdoc/I_newdoc_facade.dart';
import 'package:inkstop/presentation/history_screen/history_screen.dart';
import 'package:inkstop/presentation/mainScreen/mainscreen.dart';

import 'injection.dart'; // Import the injection setup

void main(List<String> args) {
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final INewdocFacade newdoc = GetIt.instance<INewdocFacade>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<HistoryBloc>(create: (context) => HistoryBloc()),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        ),
        BlocProvider<NewdocBloc>(
          create: (context) => NewdocBloc(),
        ),
      ],
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, themeState) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Homescreen(),
          );
        },
      ),
    );
  }
}
