import 'dart:convert';

DocModel docModelFromJson(String str) => DocModel.fromJson(json.decode(str));

String docModelToJson(DocModel data) => json.encode(data.toJson());

class DocModel {
    String id;
    String documentName;
    String subject;
    String content;
    String createdBy;
    List<Recipient> recipients;

    DocModel({
        required this.id,
        required this.documentName,
        required this.subject,
        required this.content,
        required this.createdBy,
        required this.recipients,
    });

    factory DocModel.fromJson(Map<String, dynamic> json) => DocModel(
        id: json["_id"],
        documentName: json["document_name"],
        subject: json["subject"],
        content: json["content"],
        createdBy: json["created_by"],
        recipients: List<Recipient>.from(json["recipients"].map((x) => Recipient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "document_name": documentName,
        "subject": subject,
        "content": content,
        "created_by": createdBy,
        "recipients": List<dynamic>.from(recipients.map((x) => x.toJson())),
    };

    factory DocModel.empty() => DocModel(
        id: "",
        documentName: "",
        subject: "",
        content: "",
        createdBy: "",
        recipients: [],
    );
}

class Recipient {
    String id;
    String docId;
    String recipient;
    String status;
    dynamic updatedAt;
    int v;

    Recipient({
        required this.id,
        required this.docId,
        required this.recipient,
        required this.status,
        required this.updatedAt,
        required this.v,
    });

    factory Recipient.fromJson(Map<String, dynamic> json) => Recipient(
        id: json["_id"],
        docId: json["doc_id"],
        recipient: json["recipient"],
        status: json["status"],
        updatedAt: json["updated_at"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doc_id": docId,
        "recipient": recipient,
        "status": status,
        "updated_at": updatedAt,
        "__v": v,
    };
}
