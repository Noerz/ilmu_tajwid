import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/modules/registrasi/controllers/registrasi_controller.dart';

class RegistrasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrasiController>(
      () => RegistrasiController(),
    );
  }
}
