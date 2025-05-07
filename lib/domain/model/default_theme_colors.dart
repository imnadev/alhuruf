import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class StaticColors {
  static const black = Color(0xFF111111);
  static const white = Color(0xFFFFFFFF);
  static const solitude = Color(0xFFF0F2F5);

  static const deepSkyBlue = Color(0xFF00AAFF);

  static const parisGreen = Color(0xff54CF85);
  static const dodgerBlue = Color(0xff3F9CFB);
  static const beer = Color(0xFFFF9721);
  static const whiteSmoke = Color(0xFFF8F8F8);
  static const cinnabar = Color(0xFFED3535);
  static const lightCoral = Color(0xFFF48B8B);
  static const terraCotta = Color(0xFFEE655C);
  static const frangipani = Color(0xFFFFD5A6);
  static const barberry = Color(0xFFCCF1DA);
  static const aliceBlueDark = Color(0xFFD9EBFE);
  static const gainsboro = Color(0xFFE5E5E5);

  static const bridesmaid = Color(0xFFFDF0EF);
  static const serenade = Color(0xFFFFF5E9);
  static const aliceBlueLight = Color(0xFFF5FAFF);
  static const cosmicLatte = Color(0xFFEEFAF3);
  static const cinderella = Color(0xFFFAD1CE);
  static const peachPuff = Color(0xFFFFE0BC);
  static const watercourse = Color(0xFF036739);
  static const goldenTainoi = Color(0xFFFFC850);
  static const silver = Color(0xFFBEC3C6);
  static const heather = Color(0xFFA8B6C6);
  static const emerald = Color(0xFF42D277);
}

@singleton
class DefaultThemeColors {
  final primary = StaticColors.deepSkyBlue;
  final disable = StaticColors.deepSkyBlue.withValues(alpha: 0.2);

  final onPrimary = StaticColors.white;
  final window = StaticColors.solitude;
  final headline = StaticColors.black;
  final headline20 = StaticColors.black.withValues(alpha: 0.2);
  final headline40 = StaticColors.black.withValues(alpha: 0.4);
  final headline50 = StaticColors.black.withValues(alpha: 0.5);
  final headline60 = StaticColors.black.withValues(alpha: 0.6);
  final headline70 = StaticColors.black.withValues(alpha: 0.7);
  final onPrimary20 = StaticColors.white.withValues(alpha: 0.20);
  final onPrimary50 = StaticColors.white.withValues(alpha: 0.5);
  final onPrimary60 = StaticColors.white.withValues(alpha: 0.6);

  final box = StaticColors.whiteSmoke;
  final warning = StaticColors.cinnabar;
  final warning12 = StaticColors.cinnabar.withValues(alpha: 0.12);
  final lightWarning = StaticColors.lightCoral;
  final darkPrimary = StaticColors.watercourse;
  final hint = StaticColors.gainsboro;
  final hint30 = StaticColors.gainsboro.withValues(alpha: 0.3);
  final rating = StaticColors.goldenTainoi;
  final label = StaticColors.silver;
  final label50 = StaticColors.silver.withValues(alpha: 0.5);
  final title = StaticColors.heather;
  final info = StaticColors.emerald;

  final errorFill = StaticColors.bridesmaid;
  final infoFill = StaticColors.aliceBlueLight;
  final warningFill = StaticColors.serenade;
  final successFill = StaticColors.cosmicLatte;
  final errorStroke = StaticColors.cinderella;
  final warningStroke = StaticColors.peachPuff;
  final infoStroke = StaticColors.aliceBlueDark;
  final successStroke = StaticColors.barberry;
  final errorShadow = StaticColors.terraCotta.withValues(alpha: 0.16);
  final warningShadow = StaticColors.frangipani.withValues(alpha: 0.24);
  final infoShadow = StaticColors.dodgerBlue.withValues(alpha: 0.12);
  final successShadow = StaticColors.parisGreen.withValues(alpha: 0.16);
  final errorIcon = StaticColors.terraCotta;
  final warningIcon = StaticColors.beer;
  final infoIcon = StaticColors.dodgerBlue;
  final successIcon = StaticColors.parisGreen;
}
