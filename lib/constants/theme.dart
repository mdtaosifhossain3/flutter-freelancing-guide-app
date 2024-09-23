import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/colors.dart';

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(color: appbarColor),
);

final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: scaffoldBgColor,
  primaryColor: primaryTextColor,
  appBarTheme: AppBarTheme(color: appbarColor),
);
