import 'package:flutter/material.dart';
// Screens
import '../../screen/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return HomePage.route();
      case '/doctor':
        return DoctorsPage.route();
      case '/splash':
        return SplashPage.route();
      case '/chat':
        return ChatPage.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
      ),
    );
  }
}
