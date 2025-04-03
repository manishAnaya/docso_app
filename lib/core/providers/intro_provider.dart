import 'package:docso_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import '../services/navigation_service.dart';

class IntroProvider with ChangeNotifier {
  int _currentIndex = 0;
  PageController pageController = PageController();

  int get currentIndex => _currentIndex;

  bool selectedIndex(int index) {
    return _currentIndex == index;
  }

  void changeIndex(int index) {
    _currentIndex = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    notifyListeners();
  }

  void goToNext(BuildContext context) {
    if (_currentIndex < 2) {
      changeIndex(_currentIndex + 1);
    } else {
      NavigationService.push(AppRoutes.login);
    }
  }
}
