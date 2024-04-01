import 'package:flutter/material.dart';
import 'package:flutter_locale/app/app_strings.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          AppStrings.day.tr,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
