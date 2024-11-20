import 'package:custom_widgets/widgets/switch_lib.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Switch Widget', type: CustomSwitchWidget)
Widget buildSwitchWidgetUseCase(BuildContext context) {
  final SwitchSize size = context.knobs.list<SwitchSize>(
    label: 'Switch Size',
    options: [
      ...SwitchSize.values,
    ],
    initialOption: SwitchSize.lg,
  );
  final SwitchColor color = context.knobs.list<SwitchColor>(
    label: 'Active Color',
    options: [
      ...SwitchColor.values,
    ],
    initialOption: SwitchColor.defaultColor,
  );
  return Center(
    child: CustomSwitchWidget(
      label: context.knobs.string(
        label: 'Label',
        initialValue: 'Label',
      ),
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
