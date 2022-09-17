import 'package:demo_multitheme/config/app_route.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const DemoMultiThemeApp());
}

class DemoMultiThemeApp extends StatefulWidget {
  const DemoMultiThemeApp({Key? key}) : super(key: key);

  @override
  State<DemoMultiThemeApp> createState() => _DemoMultiThemeAppState();
}

class _DemoMultiThemeAppState extends State<DemoMultiThemeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash,
      routes: AppRoute.routesMap,
    );
  }
}
