import 'package:flutter/material.dart';

enum SwitchColors {
  defaultColor,
  primaryColor,
  secondaryColor,
  dangerColor,
  successColor,
  warningColor,
}

abstract class SwitchColor {
  static const Color defaultColor = Color(0xffA1A1AA);
  static const Color primaryColor = Color(0xff006FEE);
  static const Color secondaryColor = Color(0xff9353D3);
  static const Color dangerColor = Color(0xffF31260);
  static const Color successColor = Color(0xff17C964);
  static const Color warningColor = Color(0xffF5A524);
  static Color getColor(SwitchColors switchColor) {
    switch (switchColor) {
      case SwitchColors.defaultColor:
        return SwitchColor.defaultColor;
      case SwitchColors.primaryColor:
        return SwitchColor.primaryColor;
      case SwitchColors.secondaryColor:
        return SwitchColor.secondaryColor;
      case SwitchColors.dangerColor:
        return SwitchColor.dangerColor;
      case SwitchColors.successColor:
        return SwitchColor.successColor;
      case SwitchColors.warningColor:
        return SwitchColor.warningColor;
    }
  }
}
