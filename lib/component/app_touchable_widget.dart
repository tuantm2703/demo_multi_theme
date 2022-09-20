import 'package:flutter/material.dart';

class AppTouchableWidget extends StatelessWidget {
  final Function()? onTap;
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxDecoration? boxDecoration;

  const AppTouchableWidget({Key? key, required this.child, this.onTap, this.padding, this.margin, this.boxDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin,
      decoration: boxDecoration,
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
