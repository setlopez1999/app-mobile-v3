import 'package:flutter/material.dart';
import 'package:go_transitions/go_transitions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/theme/colors.handler.dart';
import 'package:tvapp/widgets/env.widget.dart';

/// Light Theme
final lightTheme = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: GoTransitions.cupertino,
      TargetPlatform.iOS: GoTransitions.cupertino,
      TargetPlatform.macOS: GoTransitions.cupertino,
    },
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: swatchColorFromHexString(env('LIGHT_THEME_COLOR')),
  ),
  useMaterial3: true,
  scaffoldBackgroundColor: Environment.lightThemeColor,
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      minimumSize: const Size(128, 39),
      backgroundColor: Environment.secondaryLightThemeColor,
      foregroundColor: Environment.secondaryLightThemeTextColor,
      textStyle: GoogleFonts.getFont(
        Environment.googleFonts,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Environment.lightThemeColorText,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.getFont(
      Environment.googleFonts,
      textStyle: TextStyle(
        color: Environment.lightThemeColorText.withOpacity(0.75),
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Environment.lightThemeColorText.withOpacity(0.75),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Environment.secondaryLightThemeColor,
      ),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStatePropertyAll(
      Environment.secondaryLightThemeColor,
    ),
    side: BorderSide(
      width: 2,
      color: Environment.lightThemeColorText,
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Environment.secondaryLightThemeColor,
    selectionColor: Environment.secondaryLightThemeColor,
    selectionHandleColor: Environment.secondaryLightThemeColor,
  ),
);
