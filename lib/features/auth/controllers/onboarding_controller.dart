

import 'package:e_commerce/features/auth/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();
  final pageController = PageController();
  final  currentIndex = 0.obs;


  //upadate index
  void updateIndex(index) => currentIndex.value = index;


  void dotNavClick(index){
     currentIndex.value = index;
     pageController.jumpToPage(index);
  }

  void onSkipPressed(){
    //got to login screen
    Get.to(() => const LoginScreen());
    
// print("nfjngif");

  }
}