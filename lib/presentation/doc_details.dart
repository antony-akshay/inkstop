import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/domain/core/docmodel.dart';
import 'package:inkstop/presentation/components/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,required DocModel doc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Repeatingwidgets.appbar(context),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 90,
              width: 405,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 58, 55, 59),
                  borderRadius: BorderRadius.circular(11)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 405,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(11),
                            topLeft: Radius.circular(11)),
                        color: Color.fromARGB(255, 46, 45, 46)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Doc Details',
                          style:
                              GoogleFonts.averiaSansLibre(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Doc_id:',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 156, 153, 153)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '789e6523142c20c3ac1d223b7b8fcb53',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 206, 201, 201)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'doc_name:',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 156, 153, 153)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'leave letter',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromARGB(255, 206, 201, 201)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 95,
              width: 405,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 58, 55, 59),
                  borderRadius: BorderRadius.circular(11)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 405,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(11),
                            topLeft: Radius.circular(11)),
                        color: Color.fromARGB(255, 46, 45, 46)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Subject',
                          style:
                              GoogleFonts.averiaSansLibre(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'email for leave letter',
                          style: GoogleFonts.averiaSansLibre(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 206, 201, 201)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 405,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 58, 55, 59),
                borderRadius: BorderRadius.circular(11),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 405,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(11),
                        topLeft: Radius.circular(11),
                      ),
                      color: Color.fromARGB(255, 46, 45, 46),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Content',
                          style:
                              GoogleFonts.averiaSansLibre(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  // Wrap the content in a SingleChildScrollView without expanding
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'The following months were hardThe following months were hardThe following months were ',
                        style: GoogleFonts.averiaSansLibre(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 206, 201, 201)),
                      ), // Replace this with dynamic data from your API
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 95,
              width: 405,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 58, 55, 59),
                  borderRadius: BorderRadius.circular(11)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 405,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(11),
                            topLeft: Radius.circular(11)),
                        color: Color.fromARGB(255, 46, 45, 46)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Info',
                          style:
                              GoogleFonts.averiaSansLibre(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              'created by :',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 156, 153, 153)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'jaya',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 156, 153, 153)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'created at :',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 156, 153, 153)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '12:00',
                              style: GoogleFonts.averiaSansLibre(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 156, 153, 153)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Container(
            //   height: 120,
            //   width: 405,
            //   decoration: BoxDecoration(
            //       color: const Color.fromARGB(255, 58, 55, 59),
            //       borderRadius: BorderRadius.circular(11)),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //         height: 40,
            //         width: 405,
            //         decoration: const BoxDecoration(
            //             borderRadius: BorderRadius.only(
            //                 topRight: Radius.circular(11),
            //                 topLeft: Radius.circular(11)),
            //             color: Color.fromARGB(255, 46, 45, 46)),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             const SizedBox(
            //               width: 10,
            //             ),
            //             Text(
            //               'recipients',
            //               style: GoogleFonts.averiaSansLibre(color: Colors.white),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 10),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             const SizedBox(
            //               height: 4,
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Text('akshay',
            //                     style: GoogleFonts.averiaSansLibre(
            //                         fontWeight: FontWeight.w500,
            //                         color: Colors.white)),
            //                 Text('pending',
            //                     style: GoogleFonts.averiaSansLibre(
            //                         fontWeight: FontWeight.w500,
            //                         color: Colors.white)),
            //                 Text('18:00',
            //                     style: GoogleFonts.averiaSansLibre(
            //                         fontWeight: FontWeight.w500,
            //                         color: Colors.white)),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              width: 405,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 207, 28, 28),
                  borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
                title: Text('akshay',
                    style: GoogleFonts.averiaSansLibre(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                subtitle: Text('pending',
                    style: GoogleFonts.averiaSansLibre(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                trailing: const Text('12:45 am',
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 405,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 59, 173, 55),
                  borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 255, 55),
                ),
                title: Text('akshay',
                    style: GoogleFonts.averiaSansLibre(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                subtitle: Text('approved',
                    style: GoogleFonts.averiaSansLibre(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                trailing: const Text('12:45 am',
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
            )
          ],
        ),
      )),
    );
  }
}
