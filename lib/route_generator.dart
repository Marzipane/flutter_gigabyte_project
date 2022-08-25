import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/error_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(dynamic settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (context) {
        return const HomePage();
      });
    }
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}
