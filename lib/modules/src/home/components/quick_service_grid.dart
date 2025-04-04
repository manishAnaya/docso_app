import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_images.dart';
import 'package:docso_app/constants/app_sizes.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';

class QuickServiceGrid extends StatelessWidget {
  const QuickServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.horizontalPadding,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: AppSizes.spacingNBtw,
        mainAxisSpacing: AppSizes.spacingNBtw,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          buildQuickServiceCard('Book Appointment', AppAssets.appointment),
          buildQuickServiceCard('Medicines', AppAssets.medicine),
          buildQuickServiceCard('Lab Tests', AppAssets.lab),
          buildQuickServiceCard('Abha ID', AppAssets.abha),
        ],
      ),
    );
  }

  Widget buildQuickServiceCard(String title, String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
        border: Border.all(color: AppColors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
          ),
          4.h,
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          4.h,
        ],
      ),
    );
  }
}
