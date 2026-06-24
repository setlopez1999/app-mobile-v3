import 'package:flutter/material.dart';
import 'package:tvapp/widgets/env.widget.dart';

import '../environment/environment.dart';
import 'colors.handler.dart';

/// Dark Theme
final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: swatchColorFromHexString(env('DARK_THEME_COLOR')),
  ),
  useMaterial3: true,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Environment.secondaryDarkThemeColor,
    selectionColor: Environment.secondaryDarkThemeColor,
    selectionHandleColor: Environment.secondaryDarkThemeColor,
  ),
);
