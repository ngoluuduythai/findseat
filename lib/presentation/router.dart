import 'package:find_seat/presentation/screen/login/sc_login.dart';
import 'package:flutter/material.dart';

import 'screen/home/sc_home.dart';
import 'screen/splash/sc_splash.dart';

class Router {
  static const String HOME = '/';
  static const String SPLASH = '/splash';
  static const String LOGIN = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case LOGIN:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}