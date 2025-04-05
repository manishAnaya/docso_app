import 'package:docso_app/constants/app_images.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:flutter/material.dart';

class FamilyCareBanner extends StatelessWidget {
  const FamilyCareBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.mediumPadding,
      child: Container(
        padding: AppStyle.mediumPadding,
        decoration: AppStyle.bannerDecoation,
        child: Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Convenient Healthcare for the Whole Family!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Anytime, Anywhere!',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Image.asset(
              AppAssets.family,
              width: 100,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
