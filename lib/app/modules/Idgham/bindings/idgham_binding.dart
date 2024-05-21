import 'package:get/get.dart';

import '../controllers/idgham_controller.dart';

class IdghamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IdghamController>(
      () => IdghamController(),
    );
  }
}
