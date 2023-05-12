import 'package:flutter/material.dart';
import 'package:aquarium_watcher_app/common/constant/colors.dart';

FontWeight checkWeight(String weight) {
  switch (weight) {
    case '600':
      return FontWeight.w600;
    case '700':
      return FontWeight.w700;
    default:
      return FontWeight.w400;
  }
}

TextStyle mulish(double fontSize, double height,
    {BuildContext? context,
      String fontWeight = '400',
      Color? color,
      String? fontFamily,
      bool hasUnderLine = false}) {
  return TextStyle(
      fontSize: fontSize,
      height: height / fontSize,
      color: color ?? Theme.of(context!).color11,
      fontWeight: checkWeight(fontWeight),
      decoration: hasUnderLine ? TextDecoration.underline : TextDecoration.none,
      fontFamily: fontFamily ?? 'Mulish');
}

TextStyle h0(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(32, 36,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h1(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(24, 28,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h2(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(20, 32,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h3(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(19, 18,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h4(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(15, 24,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h5(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(15, 18,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h6(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(13, 22,
  context: context,
  fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h7(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(13, 16,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h8(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(12, 14,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h9(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(9, 14,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h10(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(8, 11.86,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h11(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(16, 20,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h12(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(14, 22,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h13(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(10, 14,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h14(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(10, 18,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h15(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(12, 18,
  context: context,
  fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h16(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulish(17, 18,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle h17(
    {BuildContext? context,
      String fontWeight = '400',
      bool hasUnderLine = false,
      String fontFamily = 'Mulish',
      Color? color}) {
  return mulishItalic(15, 18,
      context: context,
      fontWeight: fontWeight,
      hasUnderLine: hasUnderLine,
      fontFamily: fontFamily,
      color: color);
}

TextStyle mulishItalic(double fontSize, double height,
    {BuildContext? context,
      String fontWeight = '400',
      Color? color,
      String? fontFamily,
      bool hasUnderLine = false}) {
  return TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: fontSize,
      height: height / fontSize,
      color: color ?? Theme.of(context!).color11,
      fontWeight: checkWeight(fontWeight),
      decoration: hasUnderLine ? TextDecoration.underline : TextDecoration.none,
      fontFamily: fontFamily ?? 'Mulish');
}