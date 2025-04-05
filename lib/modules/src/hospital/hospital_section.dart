import 'package:docso_app/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'hospital_card.dart';

class HospitalSection extends StatelessWidget {
  const HospitalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: AppStyle.horizontalPadding,
      child: Row(
        children: [
          HospitalCard(
            name: 'Nationwide Children Hospital',
            type: 'Multi-specialty Hospital',
            rating: '4.8',
            imagePath: 'assets/hospital1.jpg',
            location: 'JP Nagar',
          ),
          HospitalCard(
            name: 'Apollo Hospital',
            type: 'Multi-specialty Hospital',
            rating: '4.7',
            imagePath: 'assets/hospital2.jpg',
            location: 'MG Road',
          ),
        ],
      ),
    );
  }
}
