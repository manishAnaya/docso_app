import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants/app_strings.dart';
import '../../../core/providers/auth_provider.dart';
import '../../../core/utils/app_validator.dart';
import 'components/auth_input_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context, listen: false);
    return Form(
      key: provider.loginKey,
      child: AuthInputScreen(
        title: AppStrings.enterMobileNumber,
        subtitle: AppStrings.sendConfirmationCode,
        inputField: TextFormField(
          controller: provider.phoneNoController,
          validator: AppValidator.validatePhoneNumber,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: AppStrings.enterMobileNumber,
            prefixIcon: const Icon(Icons.phone_android),
          ),
        ),
        onSubmit: provider.getOtp,
      ),
    );
  }
}
