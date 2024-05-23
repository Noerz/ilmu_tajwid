import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/controllers/auth_controller.dart';
import 'package:ilmu_tajwid/app/data/repositories/auth/auth_repoitory.dart';
import 'package:ilmu_tajwid/app/data/repositories/score/score_repository.dart';
import 'package:ilmu_tajwid/app/data/repositories_impl/auth/auth_repository_impl.dart';
import 'package:ilmu_tajwid/app/data/repositories_impl/score/score_repository.imp.dart';

import 'dio_utils.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put<Dio>(
      DioUtils.initDio(
        dotenv.env['BASE_URL'] ?? const String.fromEnvironment('BASE_URL'),
      ),
      permanent: true,
    );

    Get.put<FlutterSecureStorage>(
      const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
        iOptions: IOSOptions(
          accessibility: KeychainAccessibility.first_unlock,
        ),
      ),
    );

    Get.put<AuthRepository>(
      AuthRepositoryImpl(
        client: Get.find<Dio>(),
        storage: Get.find<FlutterSecureStorage>(),
      ),
    );

    Get.put<ScoreRepository>(
      ScoreRepositoryImpl(
        client: Get.find<Dio>(),
        storage: Get.find<FlutterSecureStorage>(),
      ),
    );

   

    // Inisialisasi controller global (injection wajib diletakkan diakhir)
    Get.put(AuthController(), permanent: true);
  }
}
