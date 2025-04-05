import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_sizes.dart';

class AppStyle {
  AppStyle._();

  static final listPadding = EdgeInsets.fromLTRB(
    AppSizes.spacingNBtw,
    AppSizes.spacingNBtw,
    AppSizes.spacingNBtw,
    0,
  );
  static final lisLtPadding = EdgeInsets.fromLTRB(
    AppSizes.spacingNBtw,
    AppSizes.spacingLBtw,
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

  static final cardRadius = BorderRadius.circular(AppSizes.defaultRadius);

  static final cardDecoation = BoxDecoration(
    borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
    border: Border.all(color: Colors.grey.shade200),
    color: AppColors.white,
  );

  static final bannerDecoation = BoxDecoration(
    borderRadius: AppStyle.cardRadius,
    border: Border.all(color: Colors.grey.shade200),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.white,
        AppColors.secondaryLighter,
      ],
    ),
  );
}
