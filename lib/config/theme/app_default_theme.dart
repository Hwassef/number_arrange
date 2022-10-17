import 'package:flutter/material.dart';
import 'package:number_arrange/config/theme/input_decoration_theme.dart';

class AppDefaultTheme {
  AppDefaultTheme._();
  static ThemeData defaultThemeData = ThemeData(
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
  );
}
