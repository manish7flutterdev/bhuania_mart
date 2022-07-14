import 'package:flutter/material.dart';

class CustomFonts{
  static medium(double size,Color color){
  return TextStyle(
      fontSize: size,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w400,
      letterSpacing: -0.15,
      color: color);
}

static large(double size,Color color){
  return TextStyle(
      fontSize: size,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w600,
      letterSpacing: -0.15,
      color: color);
}
}