import 'package:e_commerce/features/auth/controllers/onboarding_controller.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        left: 24.0,
        bottom: DeviceUtils.getNavigationBarHeight(context) + 25,
        child: SmoothPageIndicator(
           onDotClicked: controller.dotNavClick,

          controller: controller.pageController, count: 3,
        ));
  }
}
