import 'package:docso_app/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants/app_images.dart';
import '../../../core/providers/intro_provider.dart';
import 'components/bottom_buttons.dart';
import 'components/intro_page.dart';
import 'components/page_indicators.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final introProvider = context.read<IntroProvider>();
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: introProvider.pageController,
            onPageChanged: introProvider.changeIndex,
            children: const [
              IntroPage(
                title: AppStrings.onboardingTitle1,
                subtitle: AppStrings.onboardingSubtitle1,
                imagePath: AppAssets.onboarding1,
              ),
              IntroPage(
                title: AppStrings.onboardingTitle2,
                subtitle: AppStrings.onboardingSubtitle2,
                imagePath: AppAssets.onboarding2,
              ),
              IntroPage(
                title: AppStrings.onboardingTitle3,
                subtitle: AppStrings.onboardingSubtitle3,
                imagePath: AppAssets.onboarding3,
              ),
            ],
          ),
          const Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              children: [
                PageIndicators(),
                SizedBox(height: 16),
                BottomButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
