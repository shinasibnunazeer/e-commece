

import 'package:e_commerce/utils/theme/coustom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EThemeData {

static  ThemeData lightTheme = ThemeData(
//use material 3
 useMaterial3: true,
 fontFamily: 'popins',
 primaryColor: Colors.blue,
 brightness: Brightness.light,
 scaffoldBackgroundColor: Colors.white,
textTheme: ETextTheme.lightTextTheme


);
static  ThemeData darkTheme =  ThemeData(
//use material 3
 useMaterial3: true,
 fontFamily: 'popins',
 primaryColor: Colors.blue,
 brightness: Brightness.dark,
 scaffoldBackgroundColor: Colors.black,
textTheme: ETextTheme.darkTextTheme


);



}