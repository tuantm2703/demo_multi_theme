import 'package:demo_multitheme/config/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme with ChangeNotifier{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'AddingtonCF',
    scaffoldBackgroundColor: AppColor.white,
    textTheme: const TextTheme(
      headline4: TextStyle(color: AppColor.dark100),
    ),

  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'AddingtonCF',
    scaffoldBackgroundColor: AppColor.black1B1B1B,
    textTheme: const TextTheme(
      headline4: TextStyle(color: AppColor.darkModePrimary),
    ),
  );

  static bool isDarkTheme = false;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }


}
