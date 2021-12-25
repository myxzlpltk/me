import 'package:flutter/material.dart';
import 'package:web_profile/pages/home_page.dart';
import 'package:web_profile/pages/undefined_page.dart';

class Routes {
  Routes._();

  static const String home = '/';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }

    return MaterialPageRoute(
      builder: (_) => UndefinedPage(name: settings.name.toString()),
    );
  }
}
