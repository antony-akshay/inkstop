// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

import 'dart:convert';

List<HistoryModel> historyModelFromJson(String str) => List<HistoryModel>.from(json.decode(str).map((x) => HistoryModel.fromJson(x)));

String historyModelToJson(List<HistoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryModel {
    String docId;
    String documentName;
    String subject;
    String content;
    Status status;
    DateTime? updatedAt;

    HistoryModel({
        required this.docId,
        required this.documentName,
        required this.subject,
        required this.content,
        required this.status,
        required this.updatedAt,
    });

    factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        docId: json["doc_id"],
        documentName: json["document_name"],
        subject: json["subject"],
        content: json["content"],
        status: statusValues.map[json["status"]]!,
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "doc_id": docId,
        "document_name": documentName,
        "subject": subject,
        "content": content,
        "status": statusValues.reverse[status],
        "updated_at": updatedAt?.toIso8601String(),
    };
}

enum Status {
    APPROVED,
    PENDING,
    REJECTED
}

final statusValues = EnumValues({
    "approved": Status.APPROVED,
    "pending": Status.PENDING,
    "rejected": Status.REJECTED
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
