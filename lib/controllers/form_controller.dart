import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  bool passwordVisibility = false;
  final GlobalKey<FormState> signinkey = GlobalKey();
  final GlobalKey<FormState> registerkey = GlobalKey();

  void changePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
    update();
  }

  void saveRegisterInfo() {
    if (!registerkey.currentState!.validate()) {
      return;
    }
    registerkey.currentState!.save();
    // Get.to();
  }

  void saveSignInfo() {
    if (!signinkey.currentState!.validate()) {
      return;
    }
    signinkey.currentState!.save();
    // Get.to();
  }
}
