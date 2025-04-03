import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import '../../../constants/app_strings.dart';
import '../../../core/providers/auth_provider.dart';
import 'components/auth_input_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context, listen: false);
    return AuthInputScreen(
      title: AppStrings.enterVerificationCode,
      subtitle:
          '${AppStrings.otpSentTo} \n+91 ${provider.phoneNoController.text}',
      inputField: Pinput(
        length: 4,
        controller: provider.otpController,
      ),
      onSubmit: provider.verifyOtp,
    );
  }
}
