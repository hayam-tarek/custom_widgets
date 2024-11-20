import 'package:custom_widgets/widgets/switch_lib.dart';
import 'package:custom_widgets/widgets/switch_widget/switch_helper.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatefulWidget {
  const CustomSwitchWidget({
    super.key,
    required this.isSelected,
    this.activeColor = SwitchColors.defaultColor,
    this.isDisabled = false,
    this.showIcon = false,
    this.activeIcon = Icons.sunny,
    this.inActiveIcon = Icons.nightlight,
    this.showLabel = false,
    this.label = 'Bluetooth',
    this.size = SwitchSizes.lg,
  });
  final bool isSelected;
  // final Color activeColor;
  final SwitchColors activeColor;
  final bool isDisabled;
  final bool showIcon;
  final IconData activeIcon;
  final IconData inActiveIcon;
  final bool showLabel;
  final String label;
  final SwitchSizes size;

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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: SwitchHelper.getScaleFactor(widget.size),
              child: Switch(
                thumbIcon: widget.showIcon
                    ? switchValue!
                        ? WidgetStatePropertyAll(
                            Icon(
                              widget.activeIcon,
                              color: Colors.black,
                            ),
                          )
                        : WidgetStatePropertyAll(
                            Icon(
                              widget.inActiveIcon,
                              color: Colors.black,
                            ),
                          )
                    : null,
                value: switchValue!,
                thumbColor: WidgetStateProperty.all(Colors.white),
                // activeTrackColor: widget.activeColor,
                activeTrackColor: SwitchHelper.getColor(widget.activeColor),
                inactiveTrackColor: const Color(0xff3F3F46),
                trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
                onChanged: (val) {
                  setState(() {
                    switchValue = val;
                  });
                },
              ),
            ),
            if (widget.showLabel)
              Text(
                widget.label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
          ],
        ),
      ),
    );
  }
}
