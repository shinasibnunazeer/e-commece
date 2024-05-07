
import 'package:flutter/material.dart';

class EChipTheme {
  static final lightChipThemeData = ChipThemeData(
    backgroundColor: Colors.white,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    secondarySelectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12),
    labelPadding: const EdgeInsets.symmetric(horizontal: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    labelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    secondaryLabelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    brightness: Brightness.light,
    elevation: 0,
    pressElevation: 0,
    selectedShadowColor: Colors.blue,
    shadowColor: Colors.grey,
    showCheckmark: false,
    checkmarkColor: Colors.white,

  );

  static final darkChipThemeData = ChipThemeData(
    backgroundColor: Colors.black,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    secondarySelectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12),
    labelPadding: const EdgeInsets.symmetric(horizontal: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    labelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    secondaryLabelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    brightness: Brightness.dark,
    elevation: 0,
    pressElevation: 0,
    selectedShadowColor: Colors.blue,
    shadowColor: Colors.grey,
    showCheckmark: false,
    checkmarkColor: Colors.white,);



}
