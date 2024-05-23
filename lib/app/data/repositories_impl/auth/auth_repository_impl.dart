import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ilmu_tajwid/app/core/consts/endpoints.dart';
import 'package:ilmu_tajwid/app/data/models/user_model.dart';
import 'package:ilmu_tajwid/app/data/repositories/auth/auth_repoitory.dart';

class AuthRepositoryImpl extends AuthRepository {
  final Dio client;
  final FlutterSecureStorage storage;

  AuthRepositoryImpl({
    required this.client,
    required this.storage,
  });

  @override
Future<User> login({
  required String email,
  required String password,
}) async {
  try {
    final response = await client.post(
      Endpoints.login,
      data: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      print("isi dari respon login : ${response.data['data']}");
      final userData = response.data['data']; // Ambil data di dalam objek data
      return User.fromJson(userData);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  } catch (e) {
    throw Exception(e);
  }
}


  @override
  Future<Map<String, dynamic>> register({
    required String fullName,
    required String email,
    required String password,
  }) async {
    try {
      final response = await client.post(
        Endpoints.register,
        data: {
          'fullName': fullName,
          'email': email,
          'password': password,
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
        'message': 'Register new account failed, please try again. $e',
      };
    }
  }
}
