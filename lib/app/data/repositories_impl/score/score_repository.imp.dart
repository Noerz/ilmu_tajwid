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
            'Authorization':
                'Bearer $token', // Tambahkan "Bearer " sebelum token
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

  @override
  Future<Map<String, dynamic>> inputScore({
    required String user_id,
    required String nilai,
    required String grade,
    required String waktu,
  }) async {
    try {
      final response = await client.post(
        Endpoints.score,
        data: {
          'user_id': user_id,
          'nilai': nilai,
          'grade': grade,
          'waktu': waktu,
        },
      );

      if (response.statusCode == 200) {
        return {
          'success': true,
          'message': response.data['data'],
        };
      } else {
        return {
          'success': false,
          'message': response.data['data'],
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Input score failed, please try again. $e',
      };
    }
  }
}

  // @override
  // Future<void> inputScore(double scoreResult) async {
  //   try {
  //     final token = await storage.read(key: Keys.token);
  //     final userId =
  //         await storage.read(key: Keys.id); // assume you have a key for user_id

  //     final requestBody = {
  //       "user_id": userId,
  //       "nilai": scoreResult.toString(),
  //       "grade": _getGrade(
  //           scoreResult), // implement a method to get the grade based on the score
  //       "waktu":
  //           _getCurrentDateTime(), // implement a method to get the current date and time
  //     };

  //     final response = await client.post(
  //       Endpoints.score,
  //       data: requestBody,
  //       options: Options(
  //         headers: {
  //           'Authorization': 'Bearer $token',
  //         },
  //       ),
  //     );

  //     if (response.statusCode == 201) {
  //       // score input successfully
  //     } else {
  //       throw Exception('Error ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
