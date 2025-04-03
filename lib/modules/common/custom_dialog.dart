import 'package:flutter/material.dart';
import 'package:docso_app/constants/app_images.dart';
import 'package:docso_app/constants/app_sizes.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:lottie/lottie.dart';

customDialog({
  required BuildContext context,
  required String content,
  required bool isSuccess,
}) {
  final textTheme = Theme.of(context).textTheme;
  Color backgroundColor = isSuccess ? Colors.green.shade600 : Colors.red;
  String title = isSuccess ? 'Success' : 'Error';
  String gif =
      isSuccess ? AppAssets.successAnimation : AppAssets.errorAnimation;
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(gif, height: 100),
          AppSizes.spacingNBtw.h,
          Text(
            title,
            style: textTheme.headlineMedium?.copyWith(
              color: backgroundColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: textTheme.bodyMedium?.copyWith(
          color: Colors.black87,
        ),
      ),
      actions: [
        Padding(
          padding: AppStyle.listPadding,
          child: FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ),
      ],
    ),
  );
}
