import 'package:docso_app/constants/app_images.dart';
import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:docso_app/modules/src/book%20appointment/your_booking_section.dart';
import 'components/banners/family_care_banner.dart';
import 'components/banners/footer.dart';
import 'components/banners/health_banner.dart';
import '../medicine/pharmacy_section.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import 'components/banners/banner_section.dart';
import '../hospital/hospital_section.dart';
import 'components/quick_service_grid.dart';
import 'components/search_field.dart';
import 'components/section_header.dart';
import '../book appointment/specialities_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        elevation: 0,
        title: Image.asset(AppAssets.appLogo, width: 75),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Field
            SearchField(),
            // Quick Services Grid
            QuickServiceGrid(),
            // Specialities Section
            8.h,
            SectionHeader(
              title: 'Specialities most relevant to you',
              onTap: () {},
            ),
            SpecialitiesSection(),
            // Top Hospital Section
            8.h,
            SectionHeader(
              title: 'Top Hospital',
              onTap: () {},
            ),

            HospitalSection(),
            //
            8.h,
            BannerSection(),
            // Top Pharmacies Section
            SectionHeader(
              title: 'Top Pharmacies',
              onTap: () {},
            ),
            PharmacySection(),
            // Health ID Banner
            HealthBanner(),
            // Your Bookings
            SectionHeader(
              title: 'Your Bookings',
              onTap: () {},
            ),
            YourBookingSection(),
            // Family Care Banner
            FamilyCareBanner(),
            // Footer
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
