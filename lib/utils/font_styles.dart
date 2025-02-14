import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors_palette.dart';

abstract class FontStyles {
  static TextStyle s32mediumText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(32, context),
        fontWeight: FontWeight.w500);
  }

  static TextStyle s24mediumText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(24, context),
        fontWeight: FontWeight.w500);
  }

  static TextStyle s72semiBoldText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(72, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Work Sans');
  }

  static TextStyle s38semiBoldText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(38, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Work Sans');
  }

  static TextStyle s48semiBoldText(context) {
    return TextStyle(
        color: ColorsPalette.whiteColor,
        fontSize: getResponsiveFontSize(48, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Work Sans');
  }

  static TextStyle s18regularText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(18, context),
        fontWeight: FontWeight.w400,
        fontFamily: 'Work Sans');
  }

  static TextStyle s18mediumText(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(18, context),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle s18semiBoldText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(18, context),
        fontWeight: FontWeight.w600);
  }

  static TextStyle s16regularText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(16, context),
        fontWeight: FontWeight.w400,
        fontFamily: 'Work Sans');
  }

  static TextStyle s16semiBoldText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(16, context),
        fontWeight: FontWeight.w600);
  }

  static TextStyle s20semiBoldText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(20, context),
        fontWeight: FontWeight.w600);
  }

  static TextStyle s32semiBoldText(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(32, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Work Sans');
  }
}

double getResponsiveFontSize(double fontSize, BuildContext context) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double upperLimit = fontSize * 1.2;
  double lowerLimit = fontSize * 0.8;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 600;
  } else if (width < 1300) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
