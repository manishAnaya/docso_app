import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppUtility {
  AppUtility._();

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void setStatusbarDark() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenheight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
