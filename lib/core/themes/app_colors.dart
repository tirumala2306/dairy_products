import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// App radial background gradient (from Figma)
  static const RadialGradient backgroundGradient = RadialGradient(
    center: Alignment.topLeft,
    radius: 1.2,
    colors: [
      Color(0xFFB2CDDD),
      Color(0xFFFDF7FD),
      Color(0xFFE7F6FF),
      Color(0xFFF8F4FE),
    ],
    stops: [0.0, 0.5, 0.7837, 1.0],
  );

  static const Color bottomNavBackground = Color(0xFFDBF1FF);
  static const Color bottomSelectedColor = Color(0xFF049150);
  static const Color black = Color(0xFF000000);
  static const Color boxShadow = Color(0xFF828282);
  static const Color boxcolor = Color.fromRGBO(255, 255, 255, 0.3);

  static const Color greenColor = Color(0xFF049150);
  static const Color searchBorder = Color(0xE6EDEDED);

}
