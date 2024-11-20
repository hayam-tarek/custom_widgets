import 'package:custom_widgets/widgets/switch_lib.dart';
import 'package:flutter/material.dart';

abstract class SwitchHelper {
  static Color getColor(SwitchColor switchColor) {
    switch (switchColor) {
      case SwitchColor.defaultColor:
        return const Color(0xffA1A1AA);
      case SwitchColor.primaryColor:
        return const Color(0xff006FEE);
      case SwitchColor.secondaryColor:
        return const Color(0xff9353D3);
      case SwitchColor.dangerColor:
        return const Color(0xffF31260);
      case SwitchColor.successColor:
        return const Color(0xff17C964);
      case SwitchColor.warningColor:
        return const Color(0xffF5A524);
    }
  }

  static double getScaleFactor(SwitchSize switchSize) {
    switch (switchSize) {
      case SwitchSize.sm:
        return .6;
      case SwitchSize.md:
        return .8;
      case SwitchSize.lg:
        return 1;
    }
  }
}
