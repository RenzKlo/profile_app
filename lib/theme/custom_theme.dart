import 'package:flutter/material.dart';
const textColor = Color(0xFFf0e5f0);
const backgroundColor = Color(0xFF0d070d);
const primaryColor = Color(0xFFd2c1b1);
const primaryShadowColor = Color.fromARGB(255, 145, 127, 110);
const primaryFgColor = Color(0xFF0d070d);
const secondaryColor = Color(0xFF1b2d1a);
const secondaryFgColor = Color(0xFFf0e5f0);
const accentColor = Color(0xFF6a8ca9);
const accentFgColor = Color(0xFF0d070d);
@override  
const colorScheme1 = ColorScheme(
  brightness: Brightness.dark,
  background: backgroundColor,
  onBackground: textColor,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.dark == Brightness.light ? Color(0xffB3261E) : Color(0xffF2B8B5),
  onError: Brightness.dark == Brightness.light ? Color(0xffFFFFFF) : Color(0xff601410),
);