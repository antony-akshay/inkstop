import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatedDocumentsPage extends StatefulWidget {
  final String username; // Pass the logged-in username

  const CreatedDocumentsPage({super.key, required this.username});

  @override
  _CreatedDocumentsPageState createState() => _CreatedDocumentsPageState();
}

class _CreatedDocumentsPageState extends State<CreatedDocumentsPage> {
  List<dynamic> documents = [];
  bool isLoading = true;
  String errorMessage = "";

  @override
  void initState() {
    super.initState();
    fetchCreatedDocuments();
  }

  Future<void> fetchCreatedDocuments() async {
    var headers = {'Content-Type': 'application/json'}; // Fixed the key
    var dio = Dio();

    try {
      var response = await dio.get(
        'http://localhost:3000/api/history/created-by/${widget.username}',
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        setState(() {
          documents = response.data; // Directly using Dio's parsed response
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = "No created history found.";
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = "Error fetching data.";
        isLoading = false;
      });
    }
  }

  void copyToClipboard(String docId) {
    Clipboard.setData(ClipboardData(text: docId));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Copied Doc ID: $docId")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        title: const Text(
          "Created Documents",
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black87,
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
              ? Center(
                  child: Text(errorMessage,
                      style: const TextStyle(color: Colors.white)))
              : ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    final doc = documents[index];
                    return GestureDetector(
                      onTap: () => copyToClipboard(doc["_id"]),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 165, 70, 243),
                        ),
                        title: Text(
                          doc["document_name"] ?? "Untitled",
                          style: GoogleFonts.averiaSansLibre(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'Doc ID: ${doc["_id"]}',
                          style: GoogleFonts.averiaSansLibre(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        trailing: Text(
                          doc["created_at"] ?? "Unknown",
                          style: GoogleFonts.averiaSansLibre(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
