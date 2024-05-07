
import 'package:flutter/material.dart';

class ECheckboxTheme {
  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
  );

  static final darkCheckboxThemeData = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey;
      }
      return Colors.blue;
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey;
      }
      return Colors.blue;
    }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
));
}