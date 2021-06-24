import 'package:flutter/material.dart';

//App colour constants
const kPrimaryColor = Color(0XFFFF6E40);
const kSecondaryColor = Color(0xFFB5BFD0);
const kTextColor = Color(0xFF50505D);
const kTextLightColor = Color(0xFF6A727D);
const kTextDarkColor = Color(0xFF000000);
const kBackgroundColor = Color(0xFFEEDEAE5);

//App themes
const TextTheme kTextThemeDefault = TextTheme(
  headline1: TextStyle(
      color: kTextDarkColor, fontWeight: FontWeight.bold, fontSize: 30),
  headline2: TextStyle(
      color: kTextDarkColor, fontWeight: FontWeight.bold, fontSize: 20),
  headline3: TextStyle(
      color: kTextDarkColor, fontWeight: FontWeight.w700, fontSize: 18),
  headline4: TextStyle(
      color: kTextDarkColor, fontWeight: FontWeight.bold, fontSize: 16),
  headline5: TextStyle(
      color: kTextDarkColor, fontWeight: FontWeight.w700, fontSize: 14),
  headline6: TextStyle(
      color: kTextDarkColor, fontWeight: FontWeight.w700, fontSize: 12),
  subtitle1: TextStyle(
      color: kTextDarkColor, fontSize: 18, fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
      color: kTextDarkColor, fontSize: 14, fontWeight: FontWeight.w400),
);

const kPrimaryAppBarTitle = 'Pizza';
const kSecondaryAppBarTitle = 'Shop';
