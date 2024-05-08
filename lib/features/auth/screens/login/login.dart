import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/auth/screens/login/widgets/google_button.dart';
import 'package:e_commerce/utils/const/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(height: 150, EImageString.appLogo),
                Text(
                  "Welcome back!",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                //lorem
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing t labore et dolore magna aliqua.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),


              ],
            ),
    const SizedBox(height: 16),
            Form(child: Column(
             children: [
               TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
                const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Forgot password?"),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
             ]
            )),
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
            const OrWidget(),
            const SizedBox(height: 8),
             const GoogleButton()
          ],
        ),
      ),
    ));
  }
}

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("or"),
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}

