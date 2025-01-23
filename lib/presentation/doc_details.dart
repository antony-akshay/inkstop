import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/domain/core/docmodel.dart';
import 'package:inkstop/presentation/components/widgets.dart';
import 'package:inkstop/presentation/search_screen/search_screen.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final List<DocModel> data;

  HomeScreen({super.key, required this.data});

  late final doc = data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Repeatingwidgets.appbar(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Repeatingwidgets.appbar(context),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SizedBox(
                    height: 40,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => SearchScreen()));
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded)),
                  ),
                ],
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
                            style: GoogleFonts.averiaSansLibre(
                                color: Colors.white),
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
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                'Doc_id:',
                                style: GoogleFonts.averiaSansLibre(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 156, 153, 153)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                doc.first.docId,
                                style: GoogleFonts.averiaSansLibre(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 206, 201, 201)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'doc_name:',
                                style: GoogleFonts.averiaSansLibre(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 156, 153, 153)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                doc.first.documentName,
                                style: GoogleFonts.averiaSansLibre(
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(
                                        255, 206, 201, 201)),
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
                            style: GoogleFonts.averiaSansLibre(
                                color: Colors.white),
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
                            doc.first.subject,
                            style: GoogleFonts.averiaSansLibre(
                                fontWeight: FontWeight.w500,
                                color:
                                    const Color.fromARGB(255, 206, 201, 201)),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            style: GoogleFonts.averiaSansLibre(
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    // Wrap the content in a SingleChildScrollView without expanding
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          doc.first.content,
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
                            style: GoogleFonts.averiaSansLibre(
                                color: Colors.white),
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
                                    color: const Color.fromARGB(
                                        255, 156, 153, 153)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                doc.first.createdBy,
                                style: GoogleFonts.averiaSansLibre(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 156, 153, 153)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'created at :',
                                style: GoogleFonts.averiaSansLibre(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 156, 153, 153)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '12:00',
                                style: GoogleFonts.averiaSansLibre(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 156, 153, 153)),
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
              // Container(
              //   width: 405,
              //   decoration: BoxDecoration(
              //       color: const Color.fromARGB(255, 207, 28, 28),
              //       borderRadius: BorderRadius.circular(16)),
              //   child: ListTile(
              //     leading: const CircleAvatar(
              //       backgroundColor: Colors.orange,
              //     ),
              //     title: Text('akshay',
              //         style: GoogleFonts.averiaSansLibre(
              //             fontWeight: FontWeight.w500,
              //             color: const Color.fromARGB(255, 255, 255, 255))),
              //     subtitle: Text('pending',
              //         style: GoogleFonts.averiaSansLibre(
              //             fontWeight: FontWeight.w500,
              //             color: const Color.fromARGB(255, 255, 255, 255))),
              //     trailing: const Text('12:45 am',
              //         style:
              //             TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              //   ),
              // ),
              // const SizedBox(
              //   height: 6,
              // ),
              // Container(
              //   width: 405,
              //   decoration: BoxDecoration(
              //       color: const Color.fromARGB(255, 59, 173, 55),
              //       borderRadius: BorderRadius.circular(16)),
              //   child: ListTile(
              //     leading: const CircleAvatar(
              //       backgroundColor: Color.fromARGB(255, 0, 255, 55),
              //     ),
              //     title: Text('akshay',
              //         style: GoogleFonts.averiaSansLibre(
              //             fontWeight: FontWeight.w500,
              //             color: const Color.fromARGB(255, 255, 255, 255))),
              //     subtitle: Text('approved',
              //         style: GoogleFonts.averiaSansLibre(
              //             fontWeight: FontWeight.w500,
              //             color: const Color.fromARGB(255, 255, 255, 255))),
              //     trailing: const Text('12:45 am',
              //         style:
              //             TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              //   ),
              // ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      final docs = doc[index];
                      final Color containerColor;
                      final Color circleColor;
                      if (docs.status == "rejected") {
                        containerColor = const Color.fromARGB(255, 207, 28, 28);
                        circleColor = Colors.orange;
                      } else if (docs.status == "approved") {
                        containerColor = const Color.fromARGB(255, 59, 173, 55);
                        circleColor = const Color.fromARGB(255, 0, 255, 55);
                      } else {
                        // Default color for other statuses
                        containerColor = const Color.fromARGB(255, 255, 198, 9);
                        circleColor = const Color.fromARGB(255, 238, 234, 8);
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
                              docs.recipient,
                              style: GoogleFonts.averiaSansLibre(
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            subtitle: Text(
                              docs.status,
                              style: GoogleFonts.averiaSansLibre(
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            trailing: Text(
                              docs.updatedAt != null
                                  ? DateFormat('yyyy-MM-dd HH:mm:ss')
                                            .format(docs.updatedAt!)
                                  : "N/A",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: doc.length),
              )
            ],
          ),
        ),
      )),
    );
  }
}
