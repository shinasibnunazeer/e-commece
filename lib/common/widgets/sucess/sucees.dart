

import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/const/image_strings.dart';
import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyles.edgeInsets,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                EImageString.onBoardingImage2,
                height: 300,
              ),
              Text(
                "Your account has been created!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                "loreem ipsum dolor sit amet,us nec diam laoreet sollicitudin.",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Continue"),
                  onPressed: () {
                 
                  },
                ),
              ),
              //resesnd text
              
            ],
          ),
        ),
      ),

    );
  }
}