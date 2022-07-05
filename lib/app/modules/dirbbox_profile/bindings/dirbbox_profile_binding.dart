import 'package:get/get.dart';

import '../controllers/dirbbox_profile_controller.dart';

class DirbboxProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DirbboxProfileController>(
      () => DirbboxProfileController(),
    );
  }
}
