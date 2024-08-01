import 'package:flutter/material.dart';

class AppTextStyle {
  // static const fonts = 'Inter';
  static const nunito = 'Nunito';
  static TextStyle regular = const TextStyle(
    fontFamily: nunito,
    fontWeight: FontWeight.w500,
    fontSize: 11.6,
    height: 1.45,
  );

  static TextStyle medium = const TextStyle(
    fontFamily: nunito,
    fontWeight: FontWeight.normal,
    fontSize: 8,
    height: 1.45,
  );
  static TextStyle bold = const TextStyle(
    fontFamily: nunito,
    fontWeight: FontWeight.bold,
    fontSize: 15,
    height: 1.45,
  );
}
