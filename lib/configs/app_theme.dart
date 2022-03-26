import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData flexLightTheme() => FlexThemeData.light(
        colors: FlexColor.schemesList[4].light,
        fontFamily: GoogleFonts.roboto().fontFamily,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
        blendLevel: 12,
      );

  static ThemeData flexDarkTheme() => FlexThemeData.dark(
        colors: FlexColor.schemesList[4].dark,
        fontFamily: GoogleFonts.roboto().fontFamily,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
        blendLevel: 6,
      );
}
