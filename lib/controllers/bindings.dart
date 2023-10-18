import 'package:e_commerce/controllers/profile_tabbar_controller.dart';
import 'package:get/get.dart';

import 'form_controller.dart';

class Bind implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileTabbarController());
    Get.lazyPut(() => FormController());
  }
}
