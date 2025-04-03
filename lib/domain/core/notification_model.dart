// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

List<NotificationModel> notificationModelFromJson(String str) => List<NotificationModel>.from(json.decode(str).map((x) => NotificationModel.fromJson(x)));

String notificationModelToJson(List<NotificationModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationModel {
    String id;
    DocId docId;
    String recipient;
    String status;
    dynamic updatedAt;
    int v;

    NotificationModel({
        required this.id,
        required this.docId,
        required this.recipient,
        required this.status,
        required this.updatedAt,
        required this.v,
    });

    factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        id: json["_id"],
        docId: DocId.fromJson(json["doc_id"]),
        recipient: json["recipient"],
        status: json["status"],
        updatedAt: json["updated_at"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doc_id": docId.toJson(),
        "recipient": recipient,
        "status": status,
        "updated_at": updatedAt,
        "__v": v,
    };
}

class DocId {
    String id;
    String docId;
    String documentName;
    String subject;
    String content;
    String createdBy;
    DateTime createdAt;
    int v;

    DocId({
        required this.id,
        required this.docId,
        required this.documentName,
        required this.subject,
        required this.content,
        required this.createdBy,
        required this.createdAt,
        required this.v,
    });

    factory DocId.fromJson(Map<String, dynamic> json) => DocId(
        id: json["_id"],
        docId: json["doc_id"],
        documentName: json["document_name"],
        subject: json["subject"],
        content: json["content"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doc_id": docId,
        "document_name": documentName,
        "subject": subject,
        "content": content,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "__v": v,
    };
}
