import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:docso_app/modules/common/small_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../constants/app_strings.dart';
import '../../../../core/providers/auth_provider.dart';

class AuthInputScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget inputField;
  final VoidCallback onSubmit;

  const AuthInputScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.inputField,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.spacingHBtw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizes.spacingHBtw.h,
            Text(title, style: textTheme.headlineSmall),
            4.h,
            Text(subtitle, style: textTheme.labelMedium),
            AppSizes.spacingHBtw.h,
            inputField,
            AppSizes.spacingHBtw.h,
            Consumer<AuthProvider>(
              builder: (_, provider, __) => FilledButton(
                style: FilledButton.styleFrom(
                  fixedSize: Size(double.maxFinite, AppSizes.buttonHeight),
                ),
                onPressed: provider.isLoading ? null : onSubmit,
                child: provider.isLoading
                    ? SmallLoading(color: AppColors.offWhite)
                    : Text(AppStrings.continueText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
