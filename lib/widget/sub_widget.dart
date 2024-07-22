import 'package:flutter/material.dart';

class AppWidget {
  // bold text
  static TextStyle boldTextFeildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    );
  }

  // leight text style

  static TextStyle lightTextFeildStyle() {
    return TextStyle(
        color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w500);
  }
}
