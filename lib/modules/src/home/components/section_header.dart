import 'package:docso_app/constants/app_sizes.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SectionHeader({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.spacingNBtw,
        vertical: AppSizes.spacingHBtw,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text(
                'View all',
                style:
                    textTheme.labelMedium?.copyWith(color: AppColors.primary),
              ),
              4.w,
              Icon(
                Icons.arrow_forward_ios,
                size: 8,
                color: AppColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
