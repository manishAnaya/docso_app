import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_images.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '  Caring for\n  You, Always!!',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          16.h,
          Image.asset(
            AppAssets.building,
            height: 175,
            width: double.maxFinite,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
