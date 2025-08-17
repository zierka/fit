import 'dart:io';

import 'package:fit/presentation/theme/text_theme.dart';
import 'package:flutter/material.dart';

part 'app_colors.dart';

ThemeData buildThemeData(Brightness brightness) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: Color(0xFFFFE882),
    brightness: brightness,
  );

  return ThemeData(
    colorScheme: colorScheme,
    textTheme: TextThemeBuilder.build(colorScheme),
    splashFactory: Platform.isIOS
        ? NoSplash.splashFactory
        : InkRipple.splashFactory,
    filledButtonTheme: FilledButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(56),
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
      ),
    ),
  );
}
