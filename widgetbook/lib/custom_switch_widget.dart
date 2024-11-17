import 'package:custom_widgets/widgets/custom_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'default Switch Widget', type: CustomSwitchWidget)
Widget buildDefaultSwitchWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomSwitchWidget(
      isSelected: context.knobs.boolean(
        label: 'is Selected',
        initialValue: true,
      ),
      activeColor: context.knobs.color(
        label: 'Active Color',
        initialValue: SwitchColor.defaultColor,
      ),
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'primary Switch Widget', type: CustomSwitchWidget)
Widget buildPrimarySwitchWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomSwitchWidget(
      isSelected: context.knobs.boolean(
        label: 'is Selected',
        initialValue: true,
      ),
      activeColor: context.knobs.color(
        label: 'Active Color',
        initialValue: SwitchColor.primaryColor,
      ),
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'secondary Switch Widget', type: CustomSwitchWidget)
Widget buildSecondarySwitchWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomSwitchWidget(
      isSelected: context.knobs.boolean(
        label: 'is Selected',
        initialValue: true,
      ),
      activeColor: context.knobs.color(
        label: 'Active Color',
        initialValue: SwitchColor.secondaryColor,
      ),
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'danger Switch Widget', type: CustomSwitchWidget)
Widget buildDangerSwitchWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomSwitchWidget(
      isSelected: context.knobs.boolean(
        label: 'is Selected',
        initialValue: true,
      ),
      activeColor: context.knobs.color(
        label: 'Active Color',
        initialValue: SwitchColor.dangerColor,
      ),
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'success Switch Widget', type: CustomSwitchWidget)
Widget buildSuccessSwitchWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomSwitchWidget(
      isSelected: context.knobs.boolean(
        label: 'is Selected',
        initialValue: true,
      ),
      activeColor: context.knobs.color(
        label: 'Active Color',
        initialValue: SwitchColor.successColor,
      ),
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'warning Switch Widget', type: CustomSwitchWidget)
Widget buildWarningSwitchWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomSwitchWidget(
      isSelected: context.knobs.boolean(
        label: 'is Selected',
        initialValue: true,
      ),
      activeColor: context.knobs.color(
        label: 'Active Color',
        initialValue: SwitchColor.warningColor,
      ),
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}
