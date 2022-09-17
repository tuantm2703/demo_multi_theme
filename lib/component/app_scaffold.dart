import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  Widget? body;
  FloatingActionButton? floatingActionButton;
  AppScaffold({Key? key,this.body,this.floatingActionButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
