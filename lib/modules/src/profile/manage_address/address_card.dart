import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:docso_app/constants/app_style.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class AddressCard extends StatelessWidget {
  final int index;
  const AddressCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final color = theme.colorScheme;
    final lightStyle = style.titleMedium?.copyWith(color: color.onSurface);
    final boldStyle = style.titleMedium?.copyWith(fontWeight: FontWeight.bold);
    return Card(
      margin: AppStyle.mediumPadding,
      child: Padding(
        padding: AppStyle.highPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            index == 0
                ? Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'DEFAULT',
                      style: style.labelSmall?.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            AppSizes.spacingLBtw.h,
            Text('Manish Agrahari'.toUpperCase(), style: boldStyle),
            AppSizes.spacingLBtw.h,
            Text(
                'Above Flipkart Office, Near LIC Office, Sonbhadra, Uttar  Pradesh, India - 231219',
                style: lightStyle),
            AppSizes.spacingLBtw.h,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'Phone: ', style: lightStyle),
                  TextSpan(text: '70007033600', style: boldStyle),
                ],
              ),
            ),
            const Divider(),
            Row(
              children: [
                myTextButton(
                  label: 'Delete',
                  icon: Icons.delete,
                  onTap: () {},
                  color: AppColors.red,
                ),
                AppSizes.spacingHBtw.w,
                myTextButton(
                  label: 'Edit',
                  onTap: () {},
                  icon: Icons.edit,
                  color: AppColors.primary,
                ),
                const Spacer(),
                myTextButton(
                  label: 'Mark Default',
                  onTap: () {},
                  color: AppColors.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget myTextButton({
    required String label,
    required void Function() onTap,
    required Color color,
    IconData? icon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 20, color: color),
          AppSizes.spacingNBtw.w,
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
