import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_style.dart';

class BuildRow extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  const BuildRow({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Padding(
      padding: AppStyle.listPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: style.titleLarge?.copyWith(fontWeight: FontWeight.w400),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              'See All',
              style: style.titleSmall?.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
