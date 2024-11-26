import 'package:custom_widgets/widgets/spinner_lib.dart';
import 'package:flutter/material.dart';

abstract class SpinnerHelper {
  static Size getSpinnerSize(SpinnerSize spinnerSize) {
    switch (spinnerSize) {
      case SpinnerSize.sm:
        return const Size(20.72, 20);
      case SpinnerSize.md:
        return const Size(33.15, 32);
      case SpinnerSize.lg:
        return const Size(41.43, 40);
    }
  }
}
