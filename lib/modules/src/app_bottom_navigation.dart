import 'package:docso_app/core/models/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/providers/bottom_nav_provider.dart';
import 'home/home_page.dart';
import 'profile/profile_view/user_profile.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Selector<BottomNavProvider, int>(
        selector: (_, provider) => provider.currentIndex,
        builder: (_, index, __) => IndexedStack(
          index: index,
          children: const [
            HomePage(),
            Text('Hospital'),
            Text('Pharmacies'),
            Text('Lab'),
            UserProfile(),
          ],
        ),
      ),
      bottomNavigationBar: Selector<BottomNavProvider, int>(
        selector: (_, provider) => provider.currentIndex,
        builder: (_, currentIndex, __) =>
            buildBottomNavBar(currentIndex, context),
      ),
    );
  }

  Widget buildBottomNavBar(int currentIndex, BuildContext context) {
    final themeData = Theme.of(context).bottomNavigationBarTheme;
    final selectedColor = themeData.selectedItemColor;
    final unselectedColor = themeData.unselectedItemColor;
    final navItems = [
      NavItem(id: 1, label: 'Home', icon: Icons.home, route: ''),
      NavItem(id: 2, label: 'Hospital', icon: Icons.local_hospital, route: ''),
      NavItem(id: 3, label: 'Pharmacies', icon: Icons.vaccines, route: ''),
      NavItem(id: 4, label: 'Lab', icon: Icons.science, route: ''),
      NavItem(id: 5, label: 'Profile', icon: Icons.person, route: ''),
    ];
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: context.read<BottomNavProvider>().changeIndex,
      items: navItems
          .map((navItem) => BottomNavigationBarItem(
                icon: Icon(
                  navItem.icon,
                  color: currentIndex == navItems.indexOf(navItem)
                      ? selectedColor
                      : unselectedColor,
                ),
                label: navItem.label,
              ))
          .toList(),
    );
  }
}
