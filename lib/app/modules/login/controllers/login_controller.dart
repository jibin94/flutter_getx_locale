import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var selectedLanguage = "".obs;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  set changeLanguage(String lang) {
    Locale locale = Locale(lang);
    Get.updateLocale(locale);
    selectedLanguage.value = lang;
  }

  @override
  void onInit() {
    super.onInit();
    selectedLanguage = Get.locale!.languageCode.obs;
  }
}
