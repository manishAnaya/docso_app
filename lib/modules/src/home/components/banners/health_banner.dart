import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:docso_app/modules/common/small_button.dart';
import 'package:flutter/material.dart';

class HealthBanner extends StatelessWidget {
  const HealthBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.mediumPadding,
      child: Container(
        padding: AppStyle.mediumPadding,
        decoration: AppStyle.bannerDecoation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Complete your Health ID',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            8.h,
            Text(
              'Get the Ayushman Bharat Digital Mission and be part of India\'s digital healthcare revolution',
              style: TextStyle(fontSize: 12, color: AppColors.darkGrey),
            ),
            8.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallButton(onPressed: () {}, label: 'Join Now'),
                Image.network(
                  'https://www.indianpharmapost.com/public/thumbs/news/2022/03/11809/NHA1.png',
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
