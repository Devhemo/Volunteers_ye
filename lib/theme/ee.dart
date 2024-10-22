import 'package:flutter/material.dart';

import 'package:Volunteers.ye/core/utils/size_utils.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelperr {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorSchemew
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorSchemew;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primaryContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray100,
          fontSize: 16.fSize,
          fontFamily: 'Gilroy-SemiBold',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray50001,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.cyan400,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.cyan400,
          fontSize: 28.fSize,
          fontFamily: 'Gilroy-SemiBold',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: appTheme.cyan400,
          fontSize: 18.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: Color(0XFF0174CC),
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorSchemew = ColorScheme.light(
    // Primary colors
    primary: Color.fromARGB(255, 0, 0, 0),
    primaryContainer: Color.fromARGB(108, 12, 12, 12),

    // On colors(text colors)
    onPrimary: Color.fromARGB(255, 0, 0, 0),
    onPrimaryContainer: Color.fromARGB(255, 0, 0, 0),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Blue
  Color get blue70090 => Color.fromARGB(255, 0, 0, 0);

  // BlueGray
  Color get blueGray400 => Color.fromARGB(255, 0, 0, 0);

  // Cyan
  Color get cyan400 => Color.fromARGB(255, 0, 0, 0);
  Color get cyanA400 => Color.fromARGB(255, 0, 0, 0);

  // Cyanf
  Color get cyan5003f => Color.fromARGB(255, 0, 0, 0);

  // Gray
  Color get gray100 => Color.fromARGB(255, 0, 0, 0);
  Color get gray500 => Color.fromARGB(255, 0, 0, 0);
  Color get gray50001 => Color.fromARGB(255, 0, 0, 0);

  // Grayd
  Color get gray1006d => Color.fromARGB(255, 0, 0, 0);

  // Orange
  Color get orangeA200 => Color.fromARGB(255, 0, 0, 0);

  // White
  Color get whiteA700 => Color.fromARGB(255, 0, 0, 0);

  // Purple
  Color get purpleA200 => Color.fromARGB(255, 0, 0, 0);
}

PrimaryColors get appTheme => ThemeHelperr().themeColor();
ThemeData get themerr => ThemeHelperr().themeData();
