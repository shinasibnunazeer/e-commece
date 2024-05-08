import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/auth/screens/login/widgets/form_widget.dart';
import 'package:e_commerce/features/auth/screens/login/widgets/google_button.dart';
import 'package:e_commerce/features/auth/screens/login/widgets/login_header.dart';
import 'package:e_commerce/common/widgets/login/form_divider.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: ESpacingStyles.edgeInsets,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeader(),
            const SizedBox(height: 16),
            const FormWidget(),
            //space
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign up"),
                )
              ],
            ),
            //or
            const SizedBox(height: 16),
            const FormDivider(text: "or",),
            const SizedBox(height: 8),
            const GoogleButton()
          ],
        ),
      ),
    ));
  }
}
