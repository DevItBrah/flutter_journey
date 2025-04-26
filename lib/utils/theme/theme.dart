import 'package:flutter/material.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/elevated_button_theme.dart';


class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
    primaryColor:Colors.blue,
    scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: const ElevatedButtonThemeData()
  );
  static ThemeData darkTheme = ThemeData();
}