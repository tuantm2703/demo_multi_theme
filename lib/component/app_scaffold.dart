import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final bool? resizeToAvoidBottomInset;
  final FloatingActionButton? floatingActionButton;

  const AppScaffold({Key? key, this.body, this.floatingActionButton, this.resizeToAvoidBottomInset = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
