


import 'package:e_commerce/features/auth/controllers/onboarding_controller.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: 8.0,
      child: TextButton(
      onPressed: ()
       =>  OnboardingController.instance.onSkipPressed(),
      
      child: const Text("skip"),
    ));
  }
}