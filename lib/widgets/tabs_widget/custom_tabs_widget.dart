import 'package:custom_widgets/core/theme/colors.dart';
import 'package:custom_widgets/widgets/tabs_lib.dart';
import 'package:flutter/material.dart';

class CustomTabsWidget extends StatefulWidget {
  const CustomTabsWidget({
    super.key,
    required this.variant,
    required this.isDisabled,
    required this.size,
    required this.radius,
    required this.tabsLabels,
    required this.initialIndex,
    this.onPressed,
    this.backgroundColor = AppColors.baseDefault100,
    this.tabColor,
    this.borderColor = AppColors.baseDefault200,
  });
  final TabsVariant variant;
  final bool isDisabled;
  final TabsSize size;
  final TabsRadius radius;
  final List<String> tabsLabels;
  final int initialIndex;
  final void Function(int index)? onPressed;
  final Color backgroundColor;
  final Color? tabColor;
  final Color borderColor;
  @override
  State<CustomTabsWidget> createState() => _CustomTabsWidgetState();
}

class _CustomTabsWidgetState extends State<CustomTabsWidget> {
  late int selectedIndex;
  @override
  void initState() {
    selectedIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.isDisabled,
      child: Opacity(
        opacity: widget.isDisabled ? 0.5 : 1.0,
        child: Container(
          decoration: BoxDecoration(
            border: widget.variant == TabsVariant.bordered
                ? Border.all(
                    width: 2,
                    color: widget.borderColor,
                  )
                : null,
            color: widget.variant == TabsVariant.solid
                ? widget.backgroundColor
                : null,
            borderRadius: BorderRadius.circular(
              TabsHelper.getTabsRadius(widget.radius),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                widget.tabsLabels.length,
                (index) => TabsButton(
                  variant: widget.variant,
                  fontSize: TabsHelper.getTabsSize(widget.size),
                  label: widget.tabsLabels[index],
                  isSelected: selectedIndex == index,
                  tabColor: widget.tabColor,
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    widget.onPressed!(index);
                  },
                  radius: TabsHelper.getTabsRadius(widget.radius),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TabsButton extends StatelessWidget {
  const TabsButton({
    super.key,
    this.onPressed,
    required this.label,
    required this.isSelected,
    required this.fontSize,
    required this.radius,
    required this.variant,
    this.tabColor,
  });
  final void Function()? onPressed;
  final String label;
  final bool isSelected;
  final double fontSize;
  final double radius;
  final TabsVariant variant;
  final Color? tabColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: variant == TabsVariant.underlined && isSelected
                ? Border(
                    bottom: BorderSide(
                      color: tabColor ?? Colors.white,
                      width: 2,
                    ),
                  )
                : null,
            color: isSelected
                ? variant != TabsVariant.underlined
                    ? tabColor ?? AppColors.baseForceDark
                    : null
                : null,
            borderRadius: variant != TabsVariant.underlined
                ? BorderRadius.circular(radius)
                : null,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? variant == TabsVariant.underlined
                        ? tabColor ?? AppColors.baseForceDark
                        : Colors.white
                    : AppColors.baseDefault500,
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
