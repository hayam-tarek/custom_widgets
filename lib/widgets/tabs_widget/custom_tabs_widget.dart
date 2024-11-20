import 'package:custom_widgets/widgets/tabs_lib.dart';
import 'package:flutter/material.dart';

class CustomTabsWidget extends StatefulWidget {
  const CustomTabsWidget({
    super.key,
    required this.variant,
    required this.isDisabled,
    required this.size,
    required this.radius,
  });
  final TabsVariant variant;
  final bool isDisabled;
  final TabsSize size;
  final TabsRadius radius;

  @override
  State<CustomTabsWidget> createState() => _CustomTabsWidgetState();
}

class _CustomTabsWidgetState extends State<CustomTabsWidget> {
  int selectedIndex = 0;
  List tabs = ['World', 'N.Y', 'Business', 'Arts', 'Science'];

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.isDisabled,
      child: Opacity(
        opacity: widget.isDisabled ? 0.5 : 1.0,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff27272A),
            borderRadius: BorderRadius.circular(
              TabsHelper.getTabsRadius(widget.radius),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                tabs.length,
                (index) => TabsButton(
                  fontSize: TabsHelper.getTabsSize(widget.size),
                  label: tabs[index],
                  isSelected: selectedIndex == index,
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
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
  });
  final void Function()? onPressed;
  final String label;
  final bool isSelected;
  final double fontSize;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xff3F3F46) : null,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xffA1A1AA),
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
