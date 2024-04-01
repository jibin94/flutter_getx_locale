import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modules/home/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
part 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return GetPageRoute(
            binding: LoginBinding(),
            page: () => const LoginView(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 500));
      case Routes.home:
        return GetPageRoute(
          page: () => const HomeView(),
          transition: Transition.fade,
        );
      default:
        return GetPageRoute(
          page: () => Scaffold(
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
