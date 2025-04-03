import 'package:flutter/material.dart';
import 'app_sizes.dart';

class AppStyle {
  AppStyle._();

  static final listPadding = EdgeInsets.fromLTRB(
    AppSizes.spacingNBtw,
    AppSizes.spacingNBtw,
    AppSizes.spacingNBtw,
    0,
  );
  static final lowPadding = EdgeInsets.all(AppSizes.spacingLBtw);
  static final mediumPadding = EdgeInsets.all(AppSizes.spacingNBtw);
  static final highPadding = EdgeInsets.all(AppSizes.spacingHBtw);
  static final verticalPadding =
      EdgeInsets.symmetric(vertical: AppSizes.spacingNBtw);
  static final horizontalPadding =
      EdgeInsets.symmetric(horizontal: AppSizes.spacingNBtw);
}
