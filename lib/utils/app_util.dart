import 'package:demo_multitheme/main.dart';
import 'package:flutter/material.dart';

hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

bool isNullEmpty(Object? o) => o == null || "" == o || o == "null";

bool isCurrentLightTheme() => appTheme.currentTheme == ThemeMode.light;

enum ButtonStatus {
  initial, loading, done
}