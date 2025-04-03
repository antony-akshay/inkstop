import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/notification_bloc/bloc/notification_bloc.dart';
import 'package:inkstop/presentation/components/widgets.dart';

class NotificationScreen extends StatefulWidget {
  final String username;
  const NotificationScreen({super.key, required this.username});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<dynamic> notifications = []; // Local state for notifications

  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotificationBloc>(context)
        .add(NotificationEvent.fetchNotification(username: widget.username));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Repeatingwidgets.appbar(context, 'notification'),
      body: SafeArea(
        child: BlocConsumer<NotificationBloc, NotificationState>(
          listener: (context, state) {
            if (state.model.isNotEmpty) {
              setState(() {
                notifications =
                    List.from(state.model); // Store fetched notifications
              });
            }
          },
          builder: (context, state) {
            if (notifications.isEmpty) {
              return Center(
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
              );
            }

            return ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];

                return Dismissible(
                  key: Key(notification.docId
                      .toString()), // Unique key for animation
                  direction: DismissDirection.none, // Prevent swipe deletion
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 165, 70, 243),
                    ),
                    title: Text(
                      notification.docId.documentName,
                      style: GoogleFonts.averiaSansLibre(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Received: ${notification.docId.createdAt}',
                      style: GoogleFonts.averiaSansLibre(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Reject Button
                          GestureDetector(
                            child: const CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.red,
                              child: Icon(Icons.close,
                                  size: 18, color: Colors.white),
                            ),
                            onTap: () {
                              removeNotification(index);
                              BlocProvider.of<NotificationBloc>(context).add(
                                  NotificationEvent.updateStatus(
                                      username: widget.username,
                                      status: "rejected",
                                      docId: notification.docId.id));
                            },
                          ),
                          // Approve Button
                          GestureDetector(
                            child: const CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green,
                              child: Icon(Icons.check,
                                  size: 18, color: Colors.white),
                            ),
                            onTap: () {
                              removeNotification(index);
                               BlocProvider.of<NotificationBloc>(context).add(
                                  NotificationEvent.updateStatus(
                                      username: widget.username,
                                      status: "approved",
                                      docId: notification.docId.id));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  // Function to remove a notification from the list
  void removeNotification(int index) {
    setState(() {
      notifications.removeAt(index);
    });
  }
}
