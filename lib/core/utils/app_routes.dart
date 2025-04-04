import 'package:docso_app/core/services/navigation_service.dart';
import 'package:go_router/go_router.dart';
import '../../modules/auth/intro/intro_screen.dart';
import '../../modules/auth/login/auth_screen.dart';
import '../../modules/auth/login/otp_screen.dart';
import '../../modules/src/app_bottom_navigation.dart';
import '../../modules/src/home/home_page.dart';
import '../../modules/src/profile/manage_address/manage_address.dart';
import '../../modules/src/profile/profile_view/user_profile.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.intro,
  navigatorKey: NavigationService.navigatorKey,
  routes: [
    GoRoute(
      path: AppRoutes.intro,
      builder: (context, state) => const IntroScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.otp,
      builder: (context, state) => const OtpScreen(),
    ),
    GoRoute(
      path: AppRoutes.appNav,
      builder: (context, state) => const AppBottomNavigation(),
    ),
    GoRoute(
      path: AppRoutes.profile,
      builder: (context, state) => const UserProfile(),
    ),
    GoRoute(
      path: AppRoutes.manageAddress,
      builder: (context, state) => const ManageAddress(),
    ),
  ],
);

class AppRoutes {
  static const String intro = '/intro';
  static const String login = '/login';
  static const String home = '/home';
  static const String otp = '/otp';
  static const String appNav = '/appNav';
  static const String profile = '/profile';
  static const String manageAddress = '/manageAddress';
}
