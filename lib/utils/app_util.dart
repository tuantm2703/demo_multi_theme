import 'package:flutter/material.dart';

hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

bool isNullEmpty(Object? o) => o == null || "" == o || o == "null";

enum ButtonStatus {
  initial, loading, done
}