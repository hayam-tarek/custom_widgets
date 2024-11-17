import 'package:flutter/material.dart';

class SwitchColor {
  static const Color defaultColor = Color(0xffA1A1AA);
  static const Color primaryColor = Color(0xff006FEE);
  static const Color secondaryColor = Color(0xff9353D3);
  static const Color dangerColor = Color(0xffF31260);
  static const Color successColor = Color(0xff17C964);
  static const Color warningColor = Color(0xffF5A524);
}

class CustomSwitchWidget extends StatefulWidget {
  static const String useCase = 'default Switch Widget';

  const CustomSwitchWidget({
    super.key,
    required this.isSelected,
    required this.activeColor,
    this.isDisabled = false,
  });
  final bool isSelected;
  final Color activeColor;
  final bool isDisabled;

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  bool? switchValue;
  @override
  void initState() {
    switchValue = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.isDisabled ? .5 : 1,
      child: IgnorePointer(
        ignoring: widget.isDisabled,
        child: Switch(
          value: switchValue!,
          thumbColor: WidgetStateProperty.all(Colors.white),
          activeTrackColor: widget.activeColor,
          inactiveTrackColor: const Color(0xff3F3F46),
          trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
          onChanged: (val) {
            setState(() {
              switchValue = val;
            });
          },
        ),
      ),
    );
  }
}
