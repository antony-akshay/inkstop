// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

List<NotificationModel> notificationModelFromJson(String str) => List<NotificationModel>.from(json.decode(str).map((x) => NotificationModel.fromJson(x)));

String notificationModelToJson(List<NotificationModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationModel {
    String docId;
    String documentName;
    String subject;
    String content;
    CreatedBy createdBy;
    Status status;

    NotificationModel({
        required this.docId,
        required this.documentName,
        required this.subject,
        required this.content,
        required this.createdBy,
        required this.status,
    });

    factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        docId: json["doc_id"],
        documentName: json["document_name"],
        subject: json["subject"],
        content: json["content"],
        createdBy: createdByValues.map[json["created_by"]]!,
        status: statusValues.map[json["status"]]!,
    );

    Map<String, dynamic> toJson() => {
        "doc_id": docId,
        "document_name": documentName,
        "subject": subject,
        "content": content,
        "created_by": createdByValues.reverse[createdBy],
        "status": statusValues.reverse[status],
    };
}

enum CreatedBy {
    AKSHAY
}

final createdByValues = EnumValues({
    "akshay": CreatedBy.AKSHAY
});

enum Status {
    PENDING
}

final statusValues = EnumValues({
    "pending": Status.PENDING
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
