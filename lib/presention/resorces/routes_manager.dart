import 'package:flutter/material.dart';
import 'package:nagaretto/presention/resorces/string_manager.dart';

import '../Splash_Screen.dart';


class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String mapRoute = "/map";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
