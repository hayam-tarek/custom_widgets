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
        initialValue: SwitchColors.defaultColor,
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
        initialValue: SwitchColors.primaryColor,
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
        initialValue: SwitchColors.secondaryColor,
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
        initialValue: SwitchColors.dangerColor,
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
        initialValue: SwitchColors.successColor,
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
        initialValue: SwitchColors.warningColor,
      ),
      isDisabled: context.knobs.boolean(
        label: 'is Disabled',
        initialValue: false,
      ),
    ),
  );
}
