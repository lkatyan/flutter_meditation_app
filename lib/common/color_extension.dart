import 'package:flutter/material.dart';

class TColor {
  static Color get primaryColor1 => const Color(0xff8773A1);
  static Color get primaryColor2 => const Color(0xff6B6880);
  static Color get secondaryColor1 => const Color(0xffCBD0CC	);
  static Color get secondaryColor2 => const Color(0xff7FB0B2);

  static List<Color> get primaryColor => [primaryColor2, primaryColor1];
  static List<Color> get secondaryColor => [secondaryColor1, secondaryColor2];

  static Color get black => const Color(0xff2F2A5A);
  static Color get gray => const Color(0xff373F43);
  static Color get lightGray => const Color(0xff5D6970);
  static Color get darkWhite => const Color(0xff9FB6CD);
  static Color get white => const Color(0xffCAE1FF);
}