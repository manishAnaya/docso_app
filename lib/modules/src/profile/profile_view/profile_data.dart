import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import '../../../../constants/app_sizes.dart';
import 'profile_avtar.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        AppSizes.spacingNBtw.h,
        const ProfileAvatar(),
        AppSizes.spacingLBtw.h,
        Text('Manish Agrahari', style: textTheme.titleLarge),
        3.h,
        Text('7007033600'),
      ],
    );
  }
}
