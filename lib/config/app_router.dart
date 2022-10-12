import 'package:flutter/material.dart';

import '../screens/Detail/DetailScreen.dart';
import '../screens/Home/HomeScreen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case DetailScreen.routeName:
        return DetailScreen.route();
      // case MatchesScreen.routeName:
      // return MatchesScreen.route();
      // case UserScreen.routeName:
      // return UserScreen.route();
      // case ChatScreen.routeName:
      // return ChatScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('error')),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}
