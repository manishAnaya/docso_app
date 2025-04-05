import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:docso_app/modules/common/small_button.dart';
import 'package:flutter/material.dart';

class HospitalCard extends StatelessWidget {
  final String name, type, rating, imagePath, location;
  const HospitalCard({
    super.key,
    required this.name,
    required this.type,
    required this.rating,
    required this.imagePath,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 16),
      decoration: AppStyle.cardDecoation,
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
                    Spacer(),
                    SmallButton(onPressed: () {}, label: 'View'),
                  ],
                ),
                8.h,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
