


import 'package:e_commerce/features/auth/screens/onBoarding/onboarding.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EThemeData.lightTheme,
      darkTheme: EThemeData.darkTheme,
      home: const OnBoardingScreen()
    );
  }
}