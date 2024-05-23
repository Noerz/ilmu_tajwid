// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

class User {
    final int userId;
    final String name;
    final String email;
    final String accessToken;

    User({
        required this.userId,
        required this.name,
        required this.email,
        required this.accessToken,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"]??0,
        name: json["name"]??"",
        email: json["email"]??"",
        accessToken: json["accessToken"]??"",
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "name": name,
        "email": email,
        "accessToken": accessToken,
    };
}

