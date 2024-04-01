import 'package:flutter/material.dart';
import 'package:flutter_locale/app/app_strings.dart';
import 'package:flutter_locale/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_locale/app/text_input.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../translation/languages.dart';
import '../../../widgets.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Translation",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        children: [
          Row(
            children: [
              Text(
                "${AppStrings.chooseLanguage.tr} : ",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(child: languageChooser()),
            ],
          ),
          Text(
            "Device Locale : ${Get.locale?.languageCode}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            AppStrings.greetingsText.tr,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    AppStrings.loginUserName.tr,
                  ),
                  const Text(
                    "*",
                  ),
                ],
              ),
              kHeight10,
              TextInputs(
                key: Key(AppStrings.emailId),
                label: AppStrings.emailId,
                identifier: AppStrings.emailId,
                textInputType: TextInputType.emailAddress,
                isPassword: false,
                textEditingController: controller.email,
                nextFocus: () {},
                focusNode: null,
              ),
              kHeight30,
              Row(
                children: [
                  Text(
                    AppStrings.password.tr,
                  ),
                  const Text(
                    "*",
                  ),
                ],
              ),
              kHeight10,
              TextInputs(
                height: 90,
                key: Key(AppStrings.password.tr),
                label: AppStrings.password.tr,
                identifier: AppStrings.password.tr,
                isPassword: true,
                textEditingController: controller.password,
                nextFocus: () => null,
                focusNode: null,
              ),
              kHeight10,
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.home);
                    },
                    child: Text(
                      AppStrings.login.tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  DropdownButton languageChooser() {
    return DropdownButton<String>(
        hint: const Text(
            'Please choose a location'), // Not necessary for Option 1
        value: controller.selectedLanguage.value,
        onChanged: (symbol) {
          controller.changeLanguage = symbol!;
        },
        isExpanded: true,
        items: languages.map((LanguageModel language) {
          return DropdownMenuItem<String>(
            value: language.symbol,
            child: Text(language.language),
          );
        }).toList());
  }
}
