import 'package:demo_multitheme/screen/splash_screen.dart';
import 'package:flutter/material.dart';


class AppRoute{
  static String splash = '/splash';

  static Map<String, WidgetBuilder> routesMap = {
    splash : (context) => const SplashScreen(),
  };
}