enum SwitchSizes {
  sm,
  md,
  lg,
}

abstract class SwitchSize {
  static const double sm = 0.6;
  static const double md = 0.8;
  static const double lg = 1.0;
  static double getScaleFactor(SwitchSizes switchSize) {
    switch (switchSize) {
      case SwitchSizes.sm:
        return SwitchSize.sm;
      case SwitchSizes.md:
        return SwitchSize.md;
      case SwitchSizes.lg:
        return SwitchSize.lg;
    }
  }
}
