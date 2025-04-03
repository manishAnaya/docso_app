import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        const CircleAvatar(
          radius: 65,
          backgroundImage: NetworkImage(
            'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp',
          ),
        ),
        CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.primary,
          child: Icon(
            Icons.edit_square,
            size: 20,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
