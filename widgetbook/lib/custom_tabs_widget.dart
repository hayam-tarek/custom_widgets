import 'package:custom_widgets/widgets/tabs_lib.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Tabs Widget', type: CustomTabsWidget)
Widget buildTabsWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomTabsWidget(
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