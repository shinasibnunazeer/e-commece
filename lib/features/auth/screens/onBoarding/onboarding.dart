import 'package:e_commerce/features/auth/controllers/onboarding_controller.dart';
import 'package:e_commerce/features/auth/screens/onBoarding/widgets/onboarding_indicator.dart';
import 'package:e_commerce/features/auth/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/auth/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:e_commerce/utils/const/image_strings.dart';
import 'package:e_commerce/utils/const/text.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
           Padding(
      padding: const EdgeInsets.all(8.0),
      child: PageView(
        controller: controller.pageController,
        onPageChanged: controller.updateIndex,
        children: const [
          OnBoardingPage(
            image: EImageString.onBoardingImage1,
            title: EText.onBoadingTitle1,
            subtitle: EText.onboardingSubTitle,
          ),
          OnBoardingPage(
            image: EImageString.onBoardingImage2,
            title: EText.onBoadingTitle2,
            subtitle: EText.onboardingSubTitle2,
          ),
          OnBoardingPage(
              image: EImageString.onBoardingImage3,
              title: EText.onBoadingTitle3,
              subtitle: EText.onBoadingTitle3)
        ],
      ),
    ),
          const OnBoardingSkip(),
          const OnBoardingIndicator(),
       controller.currentIndex.value == 2 ?
       Positioned(
            bottom: DeviceUtils.getNavigationBarHeight(context),
            right: 24,
            child: ElevatedButton(
              onPressed: () {},
              //circle button
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
               
               
              ),
              child: const Icon(Icons.arrow_right),
            ),
          ) : Container()
        ],
      ),
    );
  }

}
