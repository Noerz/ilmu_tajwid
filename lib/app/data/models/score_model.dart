// To parse this JSON data, do
//
//     final score = scoreFromJson(jsonString);

import 'dart:convert';

Score scoreFromJson(String str) => Score.fromJson(json.decode(str));

String scoreToJson(Score data) => json.encode(data.toJson());

class Score {
    final int idScore;
    final int userId;
    final String nilai;
    final String grade;
    final String waktu;
    final DateTime createdAt;
    final DateTime updatedAt;

    Score({
        required this.idScore,
        required this.userId,
        required this.nilai,
        required this.grade,
        required this.waktu,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Score.fromJson(Map<String, dynamic> json) => Score(
        idScore: json["id_score"],
        userId: json["user_id"],
        nilai: json["nilai"],
        grade: json["grade"],
        waktu: json["waktu"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id_score": idScore,
        "user_id": userId,
        "nilai": nilai,
        "grade": grade,
        "waktu": waktu,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}
