import 'package:custom_widgets/core/theme/colors.dart';
import 'package:custom_widgets/widgets/spinner_lib.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Snipper Widget', type: SpinnerWidget)
Widget buildSpinnerWidgetUseCase(BuildContext context) {
  return Center(
    child: SpinnerWidget(
      color: context.knobs.list<Color>(
        label: 'Color',
        initialOption: Colors.white,
        options: [
          Colors.white,
          AppColors.basePrimary,
          AppColors.baseSecondary,
          AppColors.baseSuccess,
          AppColors.baseWarning,
          AppColors.baseDanger,
          Colors.black,
        ],
      ),
      size: context.knobs.list(
        label: 'Size',
        options: [
          ...SpinnerSize.values,
        ],
      ),
    ),
  );
}
