import 'package:get/get.dart';

import '../controllers/ikhfa_controller.dart';

class IkhfaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IkhfaController>(
      () => IkhfaController(),
    );
  }
}
