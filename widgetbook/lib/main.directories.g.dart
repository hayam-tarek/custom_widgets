// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/custom_switch_widget.dart' as _i3;
import 'package:widgetbook_workspace/custom_tabs_widget.dart' as _i4;
import 'package:widgetbook_workspace/spinner_widget.dart' as _i2;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookFolder(
        name: 'spinner_widget',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'SpinnerWidget',
            useCase: _i1.WidgetbookUseCase(
              name: 'Snipper Widget',
              builder: _i2.buildSpinnerWidgetUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'switch_widget',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'CustomSwitchWidget',
            useCase: _i1.WidgetbookUseCase(
              name: 'Switch Widget',
              builder: _i3.buildSwitchWidgetUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'tabs_widget',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'CustomTabsWidget',
            useCase: _i1.WidgetbookUseCase(
              name: 'Tabs Widget',
              builder: _i4.buildTabsWidgetUseCase,
            ),
          )
        ],
      ),
    ],
  )
];
