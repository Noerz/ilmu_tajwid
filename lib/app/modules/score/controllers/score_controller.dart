import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/consts/keys.dart';
import 'package:ilmu_tajwid/app/data/models/score_model.dart';
import 'package:ilmu_tajwid/app/data/repositories/score/score_repository.dart';

class ScoreController extends GetxController {
  final _scoreRepository = Get.find<ScoreRepository>();
  final _secureStorage = Get.find<FlutterSecureStorage>();
  var scores = <Score>[].obs;
  var isLoading = true.obs;
  var errorMessage = ''.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchScores() async {
    final tempUserId = await _secureStorage.read(key: Keys.id) ?? '';
    final token = await _secureStorage.read(key: Keys.token);
      print("isi dari token $token");
    try {
      isLoading(true);
      var fetchedScores =
          await _scoreRepository.getScore(user_id: int.parse(tempUserId));
      scores.assignAll(fetchedScores);
    } catch (e) {
      errorMessage(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
