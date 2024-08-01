import 'package:flutter/material.dart';

class AppContainerStyle {
  static BoxDecoration regularContainer(
      {double radius = 10.0, Color? background}) {
    return BoxDecoration(
        color: background, borderRadius: BorderRadius.circular(radius));
  }

  static BoxDecoration regularShadowContainer(
      {double radius = 10.0, Color? background}) {
    return BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 4,
          offset: Offset(4, 8), // Shadow position
        ),
      ],
    );
  }
}
