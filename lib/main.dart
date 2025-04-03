import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/providers/theme_provider.dart';
import 'core/themes/app_theme.dart';
import 'core/utils/app_providers.dart';
import 'core/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: Selector<ThemeProvider, ThemeMode>(
        selector: (_, provider) => provider.selectedTheme,
        builder: (_, themeMode, __) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          themeMode: themeMode,
          darkTheme: AppTheme.darkTheme,
          routerConfig: router,
        ),
      ),
    );
  }
}
