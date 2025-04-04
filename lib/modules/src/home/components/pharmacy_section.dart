import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_sizes.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:flutter/material.dart';

class PharmacySection extends StatelessWidget {
  const PharmacySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.horizontalPadding,
      child: Column(
        children: [
          buildPharmacyCard(
            'Medicare Pharmacy',
            'Phase 1, Koramangala, City Mall',
            '4.8',
            'MON - SAT',
            '09:00AM - 09:30PM',
          ),
          const SizedBox(height: 16),
          buildPharmacyCard(
            'Life Pharmacy',
            'Phase 2, Koramangala',
            '4.5',
            'MON - SAT',
            '09:00AM - 09:30PM',
          ),
        ],
      ),
    );
  }

  Widget buildPharmacyCard(
      String name, String location, String rating, String days, String hours) {
    return Container(
      padding: AppStyle.mediumPadding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
        border: Border.all(color: AppColors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: AppStyle.lowPadding,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                  ),
                  child: Text(
                    days,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: AppStyle.lowPadding,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryLighter,
                  ),
                  child: Text(
                    hours,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
