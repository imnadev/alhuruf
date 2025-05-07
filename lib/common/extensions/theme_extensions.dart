import 'package:alhuruf/common/di/injection.dart';
import 'package:alhuruf/domain/model/default_theme_colors.dart';
import 'package:alhuruf/domain/model/material_colors.dart';
import 'package:flutter/material.dart';

extension ThemeContextExtensions on BuildContext {
  DefaultThemeColors get colors => getIt<DefaultThemeColors>();

  ThemeData get theme => ThemeData(
    useMaterial3: false,
    primarySwatch: MaterialColors.deepSkyBlue,
    scaffoldBackgroundColor: colors.window,
  );
}
