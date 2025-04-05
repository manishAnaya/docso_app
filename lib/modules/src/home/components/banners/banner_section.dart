import 'package:docso_app/constants/app_images.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:docso_app/modules/common/small_button.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: AppStyle.mediumPadding,
      child: Container(
        padding: AppStyle.mediumPadding,
        decoration: AppStyle.bannerDecoation,
        child: Row(
          children: [
            Image.asset(
              AppAssets.doctor,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            16.w,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Early protection for your family health',
                    textAlign: TextAlign.end,
                    style: textTheme.displaySmall?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  8.h,
                  SmallButton(onPressed: () {}, label: 'Learn More'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
