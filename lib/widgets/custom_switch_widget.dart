import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatefulWidget {
  CustomSwitchWidget({
    super.key,
    required this.initialValue,
    this.activeColor,
  });
  bool initialValue;
  Color? activeColor;

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.initialValue,
      activeColor: widget.activeColor,
      onChanged: (val) {
        setState(() {
          widget.initialValue = val;
        });
      },
    );
  }
}
