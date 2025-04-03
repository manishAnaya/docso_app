import 'package:docso_app/core/providers/auth_provider.dart';
import 'package:docso_app/core/providers/bottom_nav_provider.dart';
import 'package:docso_app/core/providers/cart_provider.dart';
import 'package:docso_app/core/providers/intro_provider.dart';
import 'package:docso_app/core/providers/product_provider.dart';
import 'package:docso_app/core/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthProvider()),
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => ProductProvider()),
    ChangeNotifierProvider(create: (_) => CartProvider()),
    ChangeNotifierProvider(create: (_) => BottomNavProvider()),
    ChangeNotifierProvider(create: (_) => IntroProvider()),
  ];
}
