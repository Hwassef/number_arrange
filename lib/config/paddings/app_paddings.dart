import 'package:flutter/cupertino.dart';

class AppPaddings {
  /// Private constructor
  AppPaddings._();
  static const double smallPaddingValue = 6.0;
  static const double normalPaddingValue = 8.0;
  static const double regularPaddingValue = 16.0;
  static const double largePadding = 22.0;
  static const EdgeInsets horizontalRegularPaddingValue = EdgeInsets.symmetric(horizontal: regularPaddingValue);
  static const EdgeInsets inputContentPaddingPadding = EdgeInsets.symmetric(
    horizontal: smallPaddingValue,
    vertical: largePadding,
  );
  static const EdgeInsets bottomNormalPadding = EdgeInsets.only(bottom: normalPaddingValue);
}
