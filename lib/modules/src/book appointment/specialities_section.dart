import 'package:docso_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SpecialitiesSection extends StatelessWidget {
  const SpecialitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          buildSpecialityChip('Eye Specialist', Icons.visibility),
          buildSpecialityChip('Dentist', Icons.emoji_emotions),
          buildSpecialityChip('Cardiologist', Icons.favorite),
          buildSpecialityChip('Pulmonologist', Icons.air),
          buildSpecialityChip('Physician', Icons.person),
        ],
      ),
    );
  }

  Widget buildSpecialityChip(String label, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.secondaryLighter,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColors.primary),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
