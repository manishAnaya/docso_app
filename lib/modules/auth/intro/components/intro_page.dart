import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../constants/app_style.dart';

class IntroPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const IntroPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Column(
      children: [
        Spacer(),
        Image.asset(imagePath),
        const SizedBox(height: 16),
        Container(
          height: 300,
          padding: AppStyle.highPadding,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: AppSizes.spacingLBtw,
            children: [
              AppSizes.spacingLBtw.h,
              Text(
                title,
                textAlign: TextAlign.center,
                style:
                    style.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: style.labelLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
