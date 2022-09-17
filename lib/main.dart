import 'package:demo_multitheme/config/app_route.dart';
import 'package:demo_multitheme/config/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DemoMultiThemeApp());
}

AppTheme appTheme = AppTheme();

class DemoMultiThemeApp extends StatefulWidget {
  const DemoMultiThemeApp({Key? key}) : super(key: key);

  @override
  State<DemoMultiThemeApp> createState() => _DemoMultiThemeAppState();
}

class _DemoMultiThemeAppState extends State<DemoMultiThemeApp> {

  @override
  void initState() {
    super.initState();
    appTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash,
      routes: AppRoute.routesMap,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: appTheme.currentTheme,
    );
  }
}
