import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:flutter/material.dart';

class PharmacyCard extends StatelessWidget {
  final String name, location, rating, days, hours;
  const PharmacyCard({
    super.key,
    required this.name,
    required this.location,
    required this.rating,
    required this.days,
    required this.hours,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyle.mediumPadding,
      decoration: AppStyle.cardDecoation,
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
