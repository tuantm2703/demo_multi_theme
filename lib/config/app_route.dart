import 'package:demo_multitheme/screen/authentication/login_screen.dart';
import 'package:demo_multitheme/screen/dashboard/dashboard_screen.dart';
import 'package:demo_multitheme/screen/dashboard/home_screen.dart';
import 'package:demo_multitheme/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static String splash = '/splash';
  static String login = '/login';
  static String dashboard = '/dashboard';
  static String home = '/home';

  static Map<String, WidgetBuilder> routesMap = {
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
    dashboard: (context) => const DashboardScreen(),
    home: (context) => const HomeScreen(),
  };
}
