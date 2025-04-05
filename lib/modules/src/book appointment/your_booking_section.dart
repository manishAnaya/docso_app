import 'package:docso_app/constants/app_style.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:docso_app/modules/src/book%20appointment/doctor_card.dart';
import 'package:flutter/material.dart';

class YourBookingSection extends StatelessWidget {
  const YourBookingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.horizontalPadding,
      child: Column(
        children: [
          DoctorCard(
            doctorName: 'Dr. Neha Singh',
            speciality: 'Cardiologist',
            date: '31 Jan 2024',
          ),
          16.h,
          DoctorCard(
            doctorName: 'Dr. Rajesh Sharma',
            speciality: 'Cardiologist',
            date: '25 Feb 2024',
          ),
        ],
      ),
    );
  }
}
