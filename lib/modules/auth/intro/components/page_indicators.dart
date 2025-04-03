import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/app_colors.dart';
import '../../../../core/providers/intro_provider.dart';

class PageIndicators extends StatelessWidget {
  const PageIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) {
          return Selector<IntroProvider, bool>(
            selector: (_, provider) => provider.selectedIndex(index),
            builder: (_, selectedIndex, __) => AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: selectedIndex ? 12 : 8,
              height: selectedIndex ? 12 : 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIndex ? AppColors.primary : AppColors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
