


import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
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
    ]));
  }
}
