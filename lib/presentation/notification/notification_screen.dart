import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/notification_bloc/bloc/notification_bloc.dart';
import 'package:inkstop/presentation/components/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NotificationBloc>(context)
        .add(const NotificationEvent.fetchNotification(username: 'user456'));

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
        child: Column(
          children: [
            BlocConsumer<NotificationBloc, NotificationState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                // Ensure `state.model` is not null and has data.
                final notif = state.model;
                if (notif.isEmpty) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'No notifications available.',
                              style: GoogleFonts.averiaSansLibre(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                }

                return Expanded(
                  child: ListView.builder(
                    itemCount: notif.length,
                    itemBuilder: (context, index) {
                      final notification = notif[index];

                      return ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        title: Text(
                          notification.documentName,
                          style: GoogleFonts.averiaSansLibre(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'Received: ${notification.documentName}',
                          style: GoogleFonts.averiaSansLibre(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
