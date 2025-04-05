import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/constants/app_style.dart';
import 'package:provider/provider.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../core/models/profile_tile.dart';
import '../../../../core/providers/bottom_nav_provider.dart';
import '../../../common/custom_bottom_sheet.dart';

class ProfileCards extends StatelessWidget {
  const ProfileCards({super.key});

  List<ProfileTile> profileTiles(BuildContext context) => [
        ProfileTile(
          label: 'Your Profile',
          icon: Icons.person,
          onTap: () => context.push('/orders'),
        ),
        ProfileTile(
          label: 'Your Orders',
          icon: Icons.shopping_bag,
          onTap: () => context.push('/orders'),
        ),
        ProfileTile(
          label: 'Your Prescription',
          icon: Icons.document_scanner,
          onTap: () => context.push('/pres'),
        ),
        ProfileTile(
          label: 'Your Lab Test',
          icon: Icons.science,
          onTap: () => context.push('/pres'),
        ),
        ProfileTile(
          label: 'Doctor Consultation',
          icon: Icons.local_hospital,
          onTap: () => context.push('/pres'),
        ),
        ProfileTile(
          label: 'Manage Address',
          icon: Icons.location_on_outlined,
          onTap: () => context.push('/manageAddress'),
        ),
        ProfileTile(
          label: 'Logout',
          icon: Icons.logout,
          onTap: () => onLogout(context),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: profileTiles(context).length,
      itemBuilder: (_, index) {
        final tile = profileTiles(context)[index];
        return buildProfileCard(textTheme, tile.label, tile.icon, tile.onTap);
      },
    );
  }

  Widget buildProfileCard(
      TextTheme textTheme, String label, IconData icon, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: AppStyle.cardDecoation,
        margin: AppStyle.listPadding,
        child: Padding(
          padding: AppStyle.lowPadding,
          child: Row(
            children: [
              Icon(icon, size: 20, color: AppColors.primary),
              AppSizes.spacingNBtw.w,
              Text(label, style: textTheme.titleMedium),
              const Spacer(),
              Icon(Icons.arrow_right, color: AppColors.primary)
            ],
          ),
        ),
      ),
    );
  }

  void onLogout(BuildContext context) {
    customBottomSheet(
      context: context,
      title: 'Logout',
      buttonName: 'Yes, Logout',
      child: const Text(
        'Are you sure you want to log out?',
        style: TextStyle(fontSize: 18),
      ),
      onConfirmation: () async {
        // context.read<AuthProvider>().logoutUser();
        // context.read<CartProvider>().clearCart();
        context.read<BottomNavProvider>().changeIndex(0);
        context.go('/login');
      },
    );
  }
}
