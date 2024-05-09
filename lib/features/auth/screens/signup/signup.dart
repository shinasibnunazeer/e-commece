import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/common/widgets/login/form_divider.dart';
import 'package:e_commerce/features/auth/screens/login/widgets/google_button.dart';
import 'package:e_commerce/features/auth/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          
          ),),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign up!",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),
                Form(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "First Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                        )),
                        //space
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 16,
                        ),

                        Expanded(
                            child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Last Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                        )),
                      ],
                    ),
                    const ESpaceBetwwen(),
                    //user name
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "User name",
                          prefixIcon: Icon(Icons.person_search_rounded)),
                    ),
                    const ESpaceBetwwen(),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "E-mail", prefixIcon: Icon(Icons.email)),
                    ),
                    const ESpaceBetwwen(),
                    //phone numer
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Phone number",
                          prefixIcon: Icon(Icons.phone)),
                    ),
                    const ESpaceBetwwen(),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Password", prefixIcon: Icon(Icons.lock)),
                    ),
                  ],
                )),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text("Create account"),
                    onPressed: () {
                      Get.to(() =>const VerifyEmailScreen());
                    },
                  ),
                ),

                //space
                const SizedBox(height: 16),
               const EFormDivider(text: "or SIGN IN WITH"),
                const SizedBox(height: 8),
                //button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GoogleButton(),
                  ],
                ),
                //button

//button
              ],
            ),
          ),
        ));
  }
}

class ESpaceBetwwen extends StatelessWidget {
  const ESpaceBetwwen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 16);
  }
}
