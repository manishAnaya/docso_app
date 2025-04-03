import 'package:docso_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/providers/intro_provider.dart';
import '../../../../core/services/navigation_service.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final introProvider = context.read<IntroProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => NavigationService.go(AppRoutes.login),
          child: const Text("Skip"),
        ),
        IconButton.filledTonal(
          onPressed: () => introProvider.goToNext(context),
          icon: const Icon(Icons.keyboard_arrow_right_outlined),
        ),
      ],
    );
  }
}
