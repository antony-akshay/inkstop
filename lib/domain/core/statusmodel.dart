// To parse this JSON data, do
//
//     final statusModel = statusModelFromJson(jsonString);

import 'dart:convert';

StatusModel statusModelFromJson(String str) => StatusModel.fromJson(json.decode(str));

String statusModelToJson(StatusModel data) => json.encode(data.toJson());

class StatusModel {
    String message;
    UpdateResult updateResult;

    StatusModel({
        required this.message,
        required this.updateResult,
    });

    factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
        message: json["message"],
        updateResult: UpdateResult.fromJson(json["updateResult"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "updateResult": updateResult.toJson(),
    };
}

class UpdateResult {
    String id;
    String docId;
    String recipient;
    String status;
    DateTime updatedAt;
    int v;

    UpdateResult({
        required this.id,
        required this.docId,
        required this.recipient,
        required this.status,
        required this.updatedAt,
        required this.v,
    });

    factory UpdateResult.fromJson(Map<String, dynamic> json) => UpdateResult(
        id: json["_id"],
        docId: json["doc_id"],
        recipient: json["recipient"],
        status: json["status"],
        updatedAt: DateTime.parse(json["updated_at"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doc_id": docId,
        "recipient": recipient,
        "status": status,
        "updated_at": updatedAt.toIso8601String(),
        "__v": v,
    };
}
