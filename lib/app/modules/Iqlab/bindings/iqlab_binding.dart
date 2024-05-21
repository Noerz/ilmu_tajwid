import 'package:get/get.dart';

import '../controllers/iqlab_controller.dart';

class IqlabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IqlabController>(
      () => IqlabController(),
    );
  }
}
