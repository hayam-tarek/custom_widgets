import 'package:custom_widgets/widgets/switch_lib.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Switch Widget', type: CustomSwitchWidget)
Widget buildSwitchWidgetUseCase(BuildContext context) {
  final SwitchSizes size = context.knobs.list<SwitchSizes>(
    label: 'Switch Size',
    options: [
      ...SwitchSizes.values,
    ],
    initialOption: SwitchSizes.lg,
  );
  final SwitchColors color = context.knobs.list<SwitchColors>(
    label: 'Active Color',
    options: [
      ...SwitchColors.values,
    ],
    initialOption: SwitchColors.defaultColor,
  );
  return Center(
    child: CustomSwitchWidget(
      size: size,
      showLabel: context.knobs.boolean(
        label: 'Show Label',
        initialValue: false,
      ),
      showIcon: context.knobs.boolean(
        label: 'Show Icon',
        initialValue: false,
      ),
      isSelected: context.knobs.boolean(
        label: 'is Selected',
        initialValue: true,
      ),
      activeColor: color,
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}
