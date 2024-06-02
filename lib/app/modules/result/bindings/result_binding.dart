import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/modules/score/controllers/score_controller.dart';

import '../controllers/result_controller.dart';

class ResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultController>(
      () => ResultController(),
    );
    Get.lazyPut<ScoreController>(
      () => ScoreController(),
    );
  }
}
