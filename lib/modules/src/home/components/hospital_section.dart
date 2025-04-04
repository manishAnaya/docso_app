import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class HospitalSection extends StatelessWidget {
  const HospitalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: AppStyle.mediumPadding,
      child: Row(
        children: [
          buildHospitalCard(
            'Nationwide Children Hospital',
            'Multi-specialty Hospital',
            '4.8',
            'assets/hospital1.jpg',
            'JP Nagar',
          ),
          buildHospitalCard(
            'Apollo Hospital',
            'Multi-specialty Hospital',
            '4.7',
            'assets/hospital2.jpg',
            'MG Road',
          ),
        ],
      ),
    );
  }

  Widget buildHospitalCard(String name, String type, String rating,
      String imagePath, String location) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              'https://media.gettyimages.com/id/1312706413/photo/modern-hospital-building.jpg?s=612x612&w=gi&k=20&c=1-EC4Mxf--5u4ItDIzrIOrduXlbKRnbx9xWWtiifrDo=',
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: AppStyle.lowPadding,
            child: Column(
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
                  type,
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 14,
                  ),
                ),
                8.h,
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16,
                      color: AppColors.darkGrey,
                    ),
                    4.w,
                    Text(
                      location,
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                16.h,
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 30,
                    child: FilledButton(
                      onPressed: () {},
                      child: Text(
                        'View',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
