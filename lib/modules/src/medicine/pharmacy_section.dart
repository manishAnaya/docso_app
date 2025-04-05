import 'package:docso_app/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'pharmacy_card.dart';

class PharmacySection extends StatelessWidget {
  const PharmacySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.horizontalPadding,
      child: Column(
        children: [
          PharmacyCard(
            name: 'Medicare Pharmacy',
            location: 'Phase 1, Koramangala, City Mall',
            rating: '4.8',
            days: 'MON - SAT',
            hours: '09:00AM - 09:30PM',
          ),
          const SizedBox(height: 16),
          PharmacyCard(
            name: 'Life Pharmacy',
            location: 'Phase 2, Koramangala',
            rating: '4.5',
            days: 'MON - SAT',
            hours: '09:00AM - 09:30PM',
          ),
        ],
      ),
    );
  }
}
