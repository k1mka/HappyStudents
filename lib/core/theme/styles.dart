import 'package:flutter/material.dart';
import 'package:happy_students/core/theme/palette.dart';

// TODO(George): Add more text styles
abstract class TextStyles {
  static TextStyle get nameProfessionStyle => const TextStyle(
        fontSize: 18,
        color: Palette.white,
        fontWeight: FontWeight.w600,
      );
}
