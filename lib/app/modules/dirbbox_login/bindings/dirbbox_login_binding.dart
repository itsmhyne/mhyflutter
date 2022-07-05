import 'package:get/get.dart';

import '../controllers/dirbbox_login_controller.dart';

class DirbboxLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DirbboxLoginController>(
      () => DirbboxLoginController(),
    );
  }
}
