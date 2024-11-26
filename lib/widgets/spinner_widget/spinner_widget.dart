import 'package:custom_widgets/widgets/spinner_lib.dart';
import 'package:flutter/material.dart';

class SpinnerWidget extends StatelessWidget {
  const SpinnerWidget({
    super.key,
    required this.color,
    required this.size,
    this.theme,
  });
  final Color color;
  final SpinnerSize size;
  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SpinnerHelper.getSpinnerSize(size).height,
      width: SpinnerHelper.getSpinnerSize(size).width,
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
