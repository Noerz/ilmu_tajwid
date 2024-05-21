import 'package:get/get.dart';

import '../controllers/izhar_controller.dart';

class IzharBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IzharController>(
      () => IzharController(),
    );
  }
}
