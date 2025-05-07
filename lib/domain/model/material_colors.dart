import 'package:flutter/material.dart';

class MaterialColors {
  static const MaterialColor deepSkyBlue =
      MaterialColor(_deepSkyBluePrimaryValue, <int, Color>{
        50: Color(0xFFE0F4FF),
        100: Color(0xFFB3E4FF),
        200: Color(0xFF80D3FF),
        300: Color(0xFF4DC2FF),
        400: Color(0xFF26B5FF),
        500: Color(_deepSkyBluePrimaryValue),
        600: Color(0xFF009AE6),
        700: Color(0xFF0088CC),
        800: Color(0xFF0074B3),
        900: Color(0xFF00558A),
      });

  static const int _deepSkyBluePrimaryValue = 0xFF00AAFF;
}
