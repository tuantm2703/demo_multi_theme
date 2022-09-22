import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final bool? resizeToAvoidBottomInset;
  final FloatingActionButton? floatingActionButton;
  final Widget? bottomNavigationBar;

  const AppScaffold(
      {Key? key, this.body, this.floatingActionButton, this.resizeToAvoidBottomInset = false, this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
