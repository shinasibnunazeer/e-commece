

import 'package:e_commerce/utils/theme/coustom_themes/app_bar_theme.dart';
import 'package:e_commerce/utils/theme/coustom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/coustom_themes/check_box_theme.dart';
import 'package:e_commerce/utils/theme/coustom_themes/chip_theme.dart';
import 'package:e_commerce/utils/theme/coustom_themes/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/coustom_themes/out_line_button_theme.dart';
import 'package:e_commerce/utils/theme/coustom_themes/text_filed_theme.dart';
import 'package:e_commerce/utils/theme/coustom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EThemeData {

static  ThemeData lightTheme = ThemeData(
//use material 3
 useMaterial3: true,
 fontFamily: 'popins',
 brightness: Brightness.light,
 primaryColor: Colors.blue,
 

textTheme: ETextTheme.lightTextTheme,
 scaffoldBackgroundColor: Colors.white,
 chipTheme: EChipTheme.lightChipThemeData,
 appBarTheme: EAppBarTheme.lightAppBarThemeData,
 checkboxTheme: ECheckboxTheme.lightCheckboxThemeData,
 bottomSheetTheme: EBottomSheetTheme.lightBottomSheetThemeData,
 elevatedButtonTheme: EElevatedButtonTeme.lightElevatedButtonThemeData,
 outlinedButtonTheme: EOutlineButtonTheme.lightOutButtonThemeData,
 inputDecorationTheme: ETextfieldTheme.lighTextfieldTheme

);
static  ThemeData darkTheme =  ThemeData(
//use material 3
 useMaterial3: true,
 fontFamily: 'popins',
 primaryColor: Colors.blue,
 brightness: Brightness.dark,
 scaffoldBackgroundColor: Colors.black,
textTheme: ETextTheme.darkTextTheme,
  chipTheme: EChipTheme.darkChipThemeData,
  appBarTheme: EAppBarTheme.darkAppBarThemeData,
  checkboxTheme: ECheckboxTheme.darkCheckboxThemeData,
  bottomSheetTheme: EBottomSheetTheme.darkBottomSheetThemeData,
  elevatedButtonTheme: EElevatedButtonTeme.darkElevatedButtonThemeData,
  outlinedButtonTheme: EOutlineButtonTheme.darkOutButtonThemeData,
  inputDecorationTheme: ETextfieldTheme.darkTextfieldTheme


);



}