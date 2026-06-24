import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tvapp/widgets/hex_color.widget.dart';

class Environment {
  Environment._();

  /// App config
  static String appName = dotenv.env['APP_NAME']!;
  static bool appDebugMode = dotenv.env['APP_DEBUG_MODE']! == 'true';
  static String appSign = dotenv.env['APP_SIGN']!;
  static String appIcon = dotenv.env['APP_ICON']!;
  static String userStore = dotenv.env['USER_STORE'] ?? 'playstore@demo.com';
  static String appSplashIcon = dotenv.env['APP_SPLASH_ICON']!;
  static String appPrincipalLang = dotenv.env['APP_PRINCIPAL_LANG']!.isEmpty
      ? 'es'
      : dotenv.env['APP_PRINCIPAL_LANG']!;

  /// Host config
  static String baseHost = dotenv.env['BASE_HOST']!;
  static String middlewareHost = dotenv.env['MIDDLEWARE_HOST']!;

  /// Theme config
  static Color lightThemeColor = HexColor(dotenv.env['LIGHT_THEME_COLOR']!);
  static Color darkThemeColor = HexColor(dotenv.env['DARK_THEME_COLOR']!);
  static Color secondaryLightThemeColor = HexColor(
    dotenv.env['SECONDARY_LIGHT_THEME_COLOR']!,
  );
  static Color secondaryDarkThemeColor = HexColor(
    dotenv.env['SECONDARY_DARK_THEME_COLOR']!,
  );
  static Color lightThemeColorText = HexColor(
    dotenv.env['LIGHT_THEME_TEXT_COLOR']!,
  );
  static Color darkThemeColorText = HexColor(
    dotenv.env['DARK_THEME_TEXT_COLOR']!,
  );
  static Color secondaryLightThemeTextColor = HexColor(
    dotenv.env['SECONDARY_LIGHT_THEME_TEXT_COLOR']!,
  );
  static Color secondaryDarkThemeTextColor = HexColor(
    dotenv.env['SECONDARY_DARK_THEME_TEXT_COLOR']!,
  );
  static String googleFonts = dotenv.env['GOOGLE_FONTS']!;
}
