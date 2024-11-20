import 'package:custom_widgets/widgets/switch_lib.dart';
import 'package:flutter/material.dart';

abstract class SwitchHelper {
  static Color getColor(SwitchColors switchColor) {
    switch (switchColor) {
      case SwitchColors.defaultColor:
        return const Color(0xffA1A1AA);
      case SwitchColors.primaryColor:
        return const Color(0xff006FEE);
      case SwitchColors.secondaryColor:
        return const Color(0xff9353D3);
      case SwitchColors.dangerColor:
        return const Color(0xffF31260);
      case SwitchColors.successColor:
        return const Color(0xff17C964);
      case SwitchColors.warningColor:
        return const Color(0xffF5A524);
    }
  }

  static double getScaleFactor(SwitchSizes switchSize) {
    switch (switchSize) {
      case SwitchSizes.sm:
        return .6;
      case SwitchSizes.md:
        return .8;
      case SwitchSizes.lg:
        return 1;
    }
  }
}
