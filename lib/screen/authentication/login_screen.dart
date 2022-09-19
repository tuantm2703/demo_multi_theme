import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: const [
          Text('Welcome!'),
        ],
      ),
    );
  }
}
