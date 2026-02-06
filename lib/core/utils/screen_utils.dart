import 'package:flutter/widgets.dart';

class ScreenUtils {
  static late double _screenWidth;
  static late double _screenHeight;

  static const double _designWidth = 360;
  static const double _designHeight = 800;

  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _screenWidth = size.width;
    _screenHeight = size.height;
  }

  static double width(double value) {
    return value * (_screenWidth / _designWidth);
  }

  static double height(double value) {
    return value * (_screenHeight / _designHeight);
  }

  static double size(double value) {
    final scaleW = _screenWidth / _designWidth;
    final scaleH = _screenHeight / _designHeight;
    return value * ((scaleW + scaleH) / 2);
  }
}
