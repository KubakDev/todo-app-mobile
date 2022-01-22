import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF6D4AFC);
const Color kPrimaryColor2 = Color(0xFF967EF9);
const Color kPrimaryColor3 = Color(0xFFB4A1FF);
const Color kPrimaryColor4 = Color(0xFFEAE4FF);
const Color kPrimaryColor5 = Color(0xFFF9F7FF);
const Color kSecondaryColor = Color(0xFFF778BA);
const Color kSecondaryColor2 = Color(0xFFF885C0);
const Color kSecondaryColor3 = Color(0xFFFFC2E2);
const Color kSecondaryColor4 = Color(0xFFFFF2F9);

MaterialColor createMaterialColor(Color color) {
  final strengths = <double>[.05];
  final swatch = <int, Color>{};
  final r = color.red, g = color.green, b = color.blue;

  for (var i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (final strength in strengths) {
    final ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
