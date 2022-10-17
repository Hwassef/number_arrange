import 'package:flutter/material.dart';

import '../config.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  /* ElevatedButton */
  static final ElevatedButtonThemeData elevatedButtonThemeDataLight = ElevatedButtonThemeData(
    style: _elevatedButtonStyle,
  );
  static final ButtonStyle _elevatedButtonStyle = ButtonStyle(
    fixedSize: MaterialStateProperty.resolveWith<Size>(
      (Set<MaterialState> states) => const Size(
        double.maxFinite,
        65.0,
      ),
    ),
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.white54;
      } else {
        return AppColors.whiteColor;
      }
    }),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.darkBlueColor.withOpacity(0.75);
      } else {
        return AppColors.darkBlueColor;
      }
    }),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        height: 1,
        color: AppColors.whiteColor,
      ),
    ),
    elevation: MaterialStateProperty.resolveWith<double>(
      (Set<MaterialState> states) => 0.0,
    ),
    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
      (states) => const RoundedRectangleBorder(
        borderRadius: AppBorderRadius.normalBorderRadius,
      ),
    ),
  );
}
