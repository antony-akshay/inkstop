// To parse this JSON data, do
//
//     final signupmodel = signupmodelFromJson(jsonString);

import 'dart:convert';

Signupmodel signupmodelFromJson(String str) => Signupmodel.fromJson(json.decode(str));

String signupmodelToJson(Signupmodel data) => json.encode(data.toJson());

class Signupmodel {
    String userId;

    Signupmodel({
        required this.userId,
    });

    factory Signupmodel.fromJson(Map<String, dynamic> json) => Signupmodel(
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
    };
}
