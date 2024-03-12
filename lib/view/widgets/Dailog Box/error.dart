
import 'package:education/view/pages/on%20boarding/onboarding_page.dart';
import 'package:education/view/widgets/custom%20widget/custom_button.dart';
import 'package:flutter/material.dart';

class ErrorAlertDailog extends StatelessWidget {
  const ErrorAlertDailog({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message),
      actions: [
        CustomButton(
          text: 'Ok',
          fontsize: 15,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const onboardingPage(),
              ),
            );
          },
        )
      ],
    );
  }
}
