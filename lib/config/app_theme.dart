import 'package:demo_multitheme/config/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme with ChangeNotifier{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.white,
    textTheme: TextTheme(
      headline4: const TextStyle(color: AppColor.dark100),
      subtitle2: TextStyle(color: AppColor.gray63),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.black1B1B1B,
    textTheme: TextTheme(
      headline4: const TextStyle(color: AppColor.darkModePrimary),
      subtitle2: TextStyle(color: AppColor.gray63),
    ),
  );

  static bool isDarkTheme = false;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }


}
