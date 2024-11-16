import 'package:custom_widgets/widgets/custom_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Switch Widget', type: CustomSwitchWidget)
Widget buildSwitchWidgetUseCase(BuildContext context) {
  return Center(
    child: CustomSwitchWidget(
      initialValue: context.knobs.boolean(
        label: 'Switch Value',
        initialValue: false,
      ),
      activeColor: context.knobs.color(
        label: 'Active Color',
        initialValue: Colors.blue,
      ),
    ),
  );
}
