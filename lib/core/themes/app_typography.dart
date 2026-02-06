import 'package:flutter/material.dart';

class AppTypography {
  /// Existing one (20px SemiBold)
  static const TextStyle semiBold20 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.0,
    letterSpacing: 0.2,
    color: Color.fromRGBO(255, 255, 255, 1),
  );

  /// NEW Typography (12px SemiBold)
  static const TextStyle semiBold12 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    height: 1.0,
    letterSpacing: 0.12,
    color: Color.fromRGBO(255, 255, 255, 0.8),
  );

  /// Inter Regular 16px
  static const TextStyle regular16 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.0, // line-height 100%
    letterSpacing: 0,
    color: Color.fromRGBO(0, 0, 0, 0.6),
  );

  static const TextStyle semiBold20Black = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.0, // line-height 100%
    letterSpacing: 0,
    color: Colors.black,
  );

  static const TextStyle medium12Right = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1, // line-height 100%
    letterSpacing: 0,
    color: Color.fromRGBO(0, 0, 0, 1),
  );

  static const TextStyle regular13 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 13,
    height: 1, // line-height 100%
    letterSpacing: 0,
  );

  /// Dairy text (TAN Nimbus)
  static const TextStyle dairyTitle = TextStyle(
    fontFamily: 'TanNimbus',
    fontWeight: FontWeight.w400,
    fontSize: 39.6,
    height: 1,
    letterSpacing: 0,
  );

  /// Products text (Anaheim)
  static const TextStyle productsSubtitle = TextStyle(
    fontFamily: 'Anaheim',
    fontWeight: FontWeight.w400,
    fontSize: 20.63,
    height: 1,
    letterSpacing: 0,
  );
}
