import 'dart:developer';

import 'package:custom_widgets/core/theme/colors.dart';
import 'package:custom_widgets/widgets/tabs_lib.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Tabs Widget', type: CustomTabsWidget)
Widget buildTabsWidgetUseCase(BuildContext context) {
  List<String> tabsLabels = ['World', 'N.Y', 'Business', 'Arts', 'Science'];
  return Center(
    child: CustomTabsWidget(
      backgroundColor: context.knobs.color(
        label: 'Background Color',
        initialValue: AppColors.baseDefault100,
      ),
      borderColor: context.knobs.color(
        label: 'Border Color',
        initialValue: AppColors.baseDefault200,
      ),
      tabColor: context.knobs.list(
        label: 'Tab Color',
        options: [
          AppColors.baseForceDark,
          AppColors.basePrimary,
          AppColors.baseSecondary,
          AppColors.baseDanger,
          AppColors.baseSuccess,
          AppColors.baseWarning,
        ],
      ),
      tabsLabels: tabsLabels,
      initialIndex: context.knobs.int.slider(
        label: 'initial Index',
        initialValue: 0,
        min: 0,
        max: tabsLabels.length - 1,
      ),
      onPressed: (index) {
        log('Selected Tab Index: $index');
      },
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
      variant: context.knobs.list(
        label: 'variant',
        options: [...TabsVariant.values],
        initialOption: TabsVariant.solid,
      ),
      size: context.knobs.list(
        label: 'size',
        options: [...TabsSize.values],
        initialOption: TabsSize.sm,
      ),
      radius: context.knobs.list(
        label: 'radius',
        options: [...TabsRadius.values],
        initialOption: TabsRadius.none,
      ),
    ),
  );
}
// dart run build_runner build -d