import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/history_bloc/history_bloc.dart';
import 'package:inkstop/domain/core/history_model.dart';
import 'package:inkstop/presentation/components/widgets.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key, required String username});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HistoryBloc>(context)
        .add(const HistoryEvent.fetchHistory(username: 'asasasa'));

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Repeatingwidgets.appbar(context,'history'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<HistoryBloc, HistoryState>(
              listener: (context, state) {
                state.successOrFailure.fold(() {}, (val) {
                  val.fold((failure) {
                    final message = failure.maybeWhen(
                      serverFailure: () => 'server failure!',
                      error: () => 'some error occured!',
                      orElse: () {},
                    );
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("$message"),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: const Color.fromARGB(255, 47, 47, 47),
                    ));
                  }, (success) {});
                });
              },
              builder: (context, state) {
                final history = state.model;
                if (state.Search) {
                  return Center(
                    child: LoadingAnimationWidget.stretchedDots(
                        size: 60,
                        // color: const Color.fromARGB(255, 181, 112, 238),
                        color: const Color.fromARGB(185, 255, 255, 255)),
                  );
                }
                return Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        final his = history[index];
                        final Color containerColor;
                        final Color circleColor;
                        switch (his.status) {
                          case Status.REJECTED:
                            containerColor =
                                const Color.fromARGB(255, 207, 28, 28);
                            circleColor = Colors.orange;
                            break;

                          case Status.APPROVED:
                            containerColor =
                                const Color.fromARGB(255, 59, 173, 55);
                            circleColor = const Color.fromARGB(255, 0, 255, 55);
                            break;

                          case Status.PENDING:
                            containerColor =
                                const Color.fromARGB(255, 255, 198, 9);
                            circleColor =
                                const Color.fromARGB(255, 238, 234, 8);
                            break;
                        }
                        return Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                width: 360,
                                decoration: BoxDecoration(
                                  color: containerColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: circleColor,
                                  ),
                                  title: Text(
                                    his.documentName,
                                    style: GoogleFonts.averiaSansLibre(
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  trailing: Text(
                                    his.status.toString().split('.').last,
                                    style: GoogleFonts.averiaSansLibre(
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  subtitle: Text(
                                    his.updatedAt != null
                                        ? DateFormat('yyyy-MM-dd HH:mm:ss')
                                            .format(his.updatedAt!)
                                        : 'N/A',
                                    style: GoogleFonts.averiaSansLibre(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                )));
                      },
                      itemCount: history.length),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
