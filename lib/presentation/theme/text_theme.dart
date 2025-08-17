import 'package:flutter/material.dart';

class TextThemeBuilder {
  static TextTheme build(ColorScheme colors) => TextTheme(
    // AppBar titles or large headers
    headlineLarge: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      // color: colors.onSurface,
      height: 44 / 32,
      letterSpacing: 0.8,
    ),
    // Subsection titles
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      // color: colors.onSurface,
      height: 32 / 24,
    ),
    // Dialog titles, list headers
    titleLarge: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: colors.onSurface,
      height: 32 / 24,
    ),
    // List item titles, cards
    titleMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: colors.onSurface,
      height: 24 / 16,
    ),
    // Smaller buttons, alert titles
    titleSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: colors.onSurface,
      height: 18 / 14,
    ),
    // Main paragraph text, readable content
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: colors.onSurfaceVariant,
      height: 24 / 16,
    ),
    // Default body text
    bodyMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: colors.onSurfaceVariant,
      height: 24 / 16,
    ),
    // Prominent buttons, pill buttons
    labelLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      height: 24 / 16,
      letterSpacing: 0.2,
      color: colors.onSurface,
    ),
    // Input labels, chip labels
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      height: 16 / 12,
      color: colors.onSurfaceVariant,
    ),
  );
}
