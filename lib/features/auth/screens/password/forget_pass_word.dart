

import 'package:e_commerce/utils/const/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPassWordScreen extends StatelessWidget {
  const ForgetPassWordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Get.back();
            },
          ),],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            

              Text(
                "Forget Password!",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
        Text(
                "We have sent a verification email to your email address. Please verify your email address to continue.",
                  style: Theme.of(context).textTheme.bodyLarge,
              ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Verify Email"),
                  onPressed: () {
                   
                  }),
              ),
              //resesnd text
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive the email?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Resend"),
                  ),
                ],
              ),
            ],
          ),
        ),

    ),
    );
  }
}