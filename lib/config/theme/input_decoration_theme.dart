import 'package:flutter/material.dart';

import '../config.dart';

class AppInputDecorationTheme {
  AppInputDecorationTheme._();
  static InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    errorMaxLines: 3,
    fillColor: AppColors.whiteColor,
    filled: true,
    errorStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.redColor,
      fontSize: 14,
    ),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: 1,
      fontStyle: FontStyle.italic,
      color: AppColors.whiteColor,
    ),
    isDense: true,
    errorBorder: OutlineInputBorder(
      borderRadius: AppBorderRadius.normalBorderRadius,
      borderSide: BorderSide(
        color: AppColors.redColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: AppBorderRadius.normalBorderRadius,
      borderSide: BorderSide(
        color: AppColors.darkBlueColor,
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: AppBorderRadius.normalBorderRadius,
      borderSide: BorderSide(
        color: AppColors.darkBlueColor,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: AppBorderRadius.normalBorderRadius,
      borderSide: BorderSide(
        color: AppColors.redColor,
        width: 1,
      ),
    ),
    contentPadding: AppPaddings.inputContentPaddingPadding,
  );
}
