import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatefulWidget {
  const CustomSwitchWidget({super.key});

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (val) {
        setState(() {
          value = val;
        });
      },
    );
  }
}
