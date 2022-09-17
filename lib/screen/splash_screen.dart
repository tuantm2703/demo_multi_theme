import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:demo_multitheme/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          appTheme.toggleTheme();
        },
      ),
    );
  }
}
