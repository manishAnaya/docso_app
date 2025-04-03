import 'package:flutter/material.dart';
import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import '../../constants/app_sizes.dart';

customBottomSheet({
  required BuildContext context,
  String? title,
  required Widget child,
  required void Function() onConfirmation,
  String? buttonName,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Padding(
      padding: AppStyle.highPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title ?? 'Confirmation', style: const TextStyle(fontSize: 22)),
          const Divider(),
          child,
          AppSizes.spacingHBtw.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white70,
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              AppSizes.spacingHBtw.w,
              FilledButton(
                onPressed: onConfirmation,
                child: Text(buttonName ?? 'Confirm'),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
