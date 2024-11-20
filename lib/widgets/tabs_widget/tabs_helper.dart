import 'package:custom_widgets/widgets/tabs_lib.dart';

abstract class TabsHelper {
  static double getTabsSize(TabsSize size) {
    switch (size) {
      case TabsSize.sm:
        return 12.0;
      case TabsSize.md:
        return 14.0;
      case TabsSize.lg:
        return 16.0;
    }
  }

  static double getTabsRadius(TabsRadius radius) {
    switch (radius) {
      case TabsRadius.none:
        return 0.0;
      case TabsRadius.sm:
        return 4.0;
      case TabsRadius.md:
        return 8.0;
      case TabsRadius.lg:
        return 12.0;
      case TabsRadius.full:
        return 9999;
    }
  }
}
