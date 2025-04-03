import 'package:docso_app/core/services/navigation_service.dart';
import 'package:docso_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthProvider extends ChangeNotifier {
  final loginKey = GlobalKey<FormState>();

  final phoneNoController = TextEditingController();
  final otpController = TextEditingController();

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  setLoading(bool val) {
    _isLoading = val;
    notifyListeners();
  }

  Future<void> getOtp() async {
    setLoading(true);
    try {
      final formState = loginKey.currentState;
      if (formState != null && formState.validate()) {
        // final phone = phoneNoController.text.trim();/
        await Future.delayed(Duration(seconds: 2));
        NavigationService.push(AppRoutes.otp);
      }
    } catch (e, stackTrace) {
      debugPrint("Error in getOtp: $e\n$stackTrace");
    } finally {
      setLoading(false);
    }
  }

  Future<void> verifyOtp() async {
    setLoading(true);
    try {
      final formState = loginKey.currentState;
      if (formState != null && formState.validate()) {
        // final phone = phoneNoController.text.trim();/
        await Future.delayed(Duration(seconds: 2));
        NavigationService.go(AppRoutes.appNav);
      }
    } catch (e, stackTrace) {
      debugPrint("Error in getOtp: $e\n$stackTrace");
    } finally {
      setLoading(false);
    }
  }

  @override
  void dispose() {
    phoneNoController.dispose();
    super.dispose();
  }
}
