import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ilmu_tajwid/app/core/consts/endpoints.dart';
import 'package:ilmu_tajwid/app/core/consts/keys.dart';
import 'package:ilmu_tajwid/app/data/models/score_model.dart';
import 'package:ilmu_tajwid/app/data/repositories/score/score_repository.dart';

class ScoreRepositoryImpl extends ScoreRepository {
  final Dio client;
  final FlutterSecureStorage storage;

  ScoreRepositoryImpl({
    required this.client,
    required this.storage,
  });

  @override
Future<List<Score>> getScore({int? user_id}) async {
  try {
    final token = await storage.read(key: Keys.token);
    print("isi dari token $token");

    final response = await client.get(
      Endpoints.score,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',  // Tambahkan "Bearer " sebelum token
        },
      ),
      queryParameters: {
        if (user_id != null) 'user_id': user_id,
      },
    );

    if (response.statusCode == 200) {
      var courses = response.data['data'];

      if (courses is List) {
        return courses.map((e) => Score.fromJson(e)).toList();
      } else {
        return [];
      }
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  } catch (e) {
    throw Exception(e);
  }
}

}
