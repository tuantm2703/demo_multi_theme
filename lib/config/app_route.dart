import 'package:demo_multitheme/screen/authentication/login_screen.dart';
import 'package:demo_multitheme/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static String splash = '/splash';
  static String login = '/login';

  static Map<String, WidgetBuilder> routesMap = {
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
  };
}
