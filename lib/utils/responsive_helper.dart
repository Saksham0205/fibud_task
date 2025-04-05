import 'package:flutter/material.dart';

class ResponsiveHelper {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static EdgeInsetsGeometry getScreenPadding(BuildContext context) {
    if (isMobile(context)) {
      return const EdgeInsets.symmetric(horizontal: 16);
    } else if (isTablet(context)) {
      return const EdgeInsets.symmetric(horizontal: 32);
    } else {
      return const EdgeInsets.symmetric(horizontal: 64);
    }
  }

  static int getCrossAxisCount(BuildContext context, {int defaultCount = 2}) {
    if (isMobile(context)) {
      return defaultCount;
    } else if (isTablet(context)) {
      return defaultCount + 1;
    } else {
      return defaultCount + 2;
    }
  }

  static double getChildAspectRatio(BuildContext context,
      {double defaultRatio = 0.8}) {
    if (isMobile(context)) {
      return defaultRatio;
    } else if (isTablet(context)) {
      return defaultRatio + 0.1;
    } else {
      return defaultRatio + 0.2;
    }
  }
}
