import 'package:flutter/material.dart';

import 'colors_theme.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.blue,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: const TextStyle(
        color: Colors.blue,
      ),
      foregroundColor: Colors.blue,
      side: const BorderSide(
        color: Colors.blue,
        width: 1.7,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      color: Colors.black,
    ),
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    contentPadding: const EdgeInsets.only(left: 26.0),
    // contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    errorBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    suffixIconColor: Colors.grey,
    prefixIconColor: Colors.grey,
    disabledBorder: outlineInputBorder,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ThemeColors.appRedColor, // Set background color to red
      textStyle: const TextStyle(
        fontSize: 18,
      ),
      disabledBackgroundColor: Colors.grey,
    ),
  ),
  primarySwatch: Colors.blue,
  canvasColor: Colors.blue,
  appBarTheme: const AppBarTheme(
    toolbarTextStyle: TextStyle(
      color: Colors.white,
    ),
    backgroundColor: Colors.blue,
    elevation: 0.0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
);
OutlineInputBorder outlineInputBorder = OutlineInputBorder(

  borderRadius: BorderRadius.circular(50),
  borderSide: const BorderSide(
    width: 1,
    color: Colors.black,
  ),
);
