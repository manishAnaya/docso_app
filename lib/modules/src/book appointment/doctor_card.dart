import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/services/navigation_service.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:docso_app/core/utils/app_routes.dart';
import 'package:docso_app/modules/common/small_button.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName, speciality, date;
  const DoctorCard({
    super.key,
    required this.doctorName,
    required this.speciality,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => NavigationService.push(AppRoutes.docDetail),
      child: Container(
        padding: AppStyle.mediumPadding,
        decoration: AppStyle.cardDecoation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 36,
                  backgroundImage: NetworkImage(
                    'https://t4.ftcdn.net/jpg/02/69/98/99/360_F_269989951_9Gf7PWaRtrpm2EochO3D5WVn22sFZbNZ.jpg',
                  ),
                ),
                16.w,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        speciality,
                        style: textTheme.titleSmall?.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 16,
                          ),
                          4.w,
                          Text(
                            date,
                            style: textTheme.bodySmall?.copyWith(
                              color: AppColors.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Recent',
                    style: textTheme.bodySmall
                        ?.copyWith(color: AppColors.darkGrey),
                  ),
                ),
              ],
            ),
            SmallButton(onPressed: () {}, label: 'Book Again'),
          ],
        ),
      ),
    );
  }
}
