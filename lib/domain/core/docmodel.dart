// To parse this JSON data, do
//
//     final docModel = docModelFromJson(jsonString);

import 'dart:convert';

List<DocModel> docModelFromJson(String str) => List<DocModel>.from(json.decode(str).map((x) => DocModel.fromJson(x)));

String docModelToJson(List<DocModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DocModel {
    String docId;
    String documentName;
    String subject;
    String content;
    String createdBy;
    String recipient;
    String status;
    DateTime? updatedAt;

    DocModel({
        required this.docId,
        required this.documentName,
        required this.subject,
        required this.content,
        required this.createdBy,
        required this.recipient,
        required this.status,
        required this.updatedAt,
    });

    factory DocModel.fromJson(Map<String, dynamic> json) => DocModel(
        docId: json["doc_id"],
        documentName: json["document_name"],
        subject: json["subject"],
        content: json["content"],
        createdBy: json["created_by"],
        recipient: json["recipient"],
        status: json["status"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "doc_id": docId,
        "document_name": documentName,
        "subject": subject,
        "content": content,
        "created_by": createdBy,
        "recipient": recipient,
        "status": status,
        "updated_at": updatedAt?.toIso8601String(),
    };
}
