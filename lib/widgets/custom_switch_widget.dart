import 'package:flutter/material.dart';

class SwitchColors {
  static const Color defaultColor = Color(0xffA1A1AA);
  static const Color primaryColor = Color(0xff006FEE);
  static const Color secondaryColor = Color(0xff9353D3);
  static const Color dangerColor = Color(0xffF31260);
  static const Color successColor = Color(0xff17C964);
  static const Color warningColor = Color(0xffF5A524);
}

enum SwitchColor {
  defaultColor,
  primaryColor,
  secondaryColor,
  dangerColor,
  successColor,
  warningColor,
}

class CustomSwitchWidget extends StatefulWidget {
  static const String useCase = 'default Switch Widget';

  const CustomSwitchWidget({
    super.key,
    required this.isSelected,
    required this.activeColor,
    this.isDisabled = false,
    required this.showIcon,
    this.activeIcon,
    this.inActiveIcon,
  });
  final bool isSelected;
  final Color activeColor;
  // final SwitchColor activeColor;
  final bool isDisabled;
  final bool showIcon;
  final IconData? activeIcon;
  final IconData? inActiveIcon;

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  bool? switchValue;
  Color getColor(SwitchColor color) {
    switch (color) {
      case SwitchColor.defaultColor:
        return SwitchColors.defaultColor;
      case SwitchColor.primaryColor:
        return SwitchColors.primaryColor;
      case SwitchColor.secondaryColor:
        return SwitchColors.secondaryColor;
      case SwitchColor.dangerColor:
        return SwitchColors.dangerColor;
      case SwitchColor.successColor:
        return SwitchColors.successColor;
      case SwitchColor.warningColor:
        return SwitchColors.warningColor;
    }
  }

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
          thumbIcon: widget.showIcon
              ? switchValue!
                  ? const WidgetStatePropertyAll(
                      Icon(
                        Icons.sunny,
                        color: Colors.black,
                      ),
                    )
                  : const WidgetStatePropertyAll(
                      Icon(
                        Icons.nightlight,
                        color: Colors.black,
                      ),
                    )
              : null,
          value: switchValue!,
          thumbColor: WidgetStateProperty.all(Colors.white),
          activeTrackColor: widget.activeColor,
          // activeTrackColor: getColor(widget.activeColor),
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
