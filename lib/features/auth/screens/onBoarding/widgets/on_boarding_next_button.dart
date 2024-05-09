



import 'package:e_commerce/features/auth/controllers/onboarding_controller.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
   
  });

 

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => OnboardingController.instance.currentIndex.value == 2 ? Positioned(
           bottom: DeviceUtils.getNavigationBarHeight(context),
           right: 24,
           child: ElevatedButton(
             onPressed: () {
               OnboardingController.instance.onSkipPressed();
             },
             //circle button
             style: ElevatedButton.styleFrom(
               shape: const CircleBorder(),
             
              
             ),
             child: const Icon(Icons.arrow_right),
           ),
         ):  Container()
    );
  }
}
