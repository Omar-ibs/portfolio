import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/utils/font_styles.dart';

class InActiveNavBarItem extends StatefulWidget {
  const InActiveNavBarItem({super.key, required this.itemTitle});
  final String itemTitle;

  @override
  State<InActiveNavBarItem> createState() => _InActiveNavBarItemState();
}

class _InActiveNavBarItemState extends State<InActiveNavBarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        duration: const Duration(milliseconds: 200),
        color: _isHovered ? ColorsPalette.whiteColor : ColorsPalette.blackColor,
        child: Text(
          widget.itemTitle,
          style: FontStyles.s16regularText(context).copyWith(
              fontWeight: FontWeight.w500,
              color: _isHovered
                  ? ColorsPalette.blackColor
                  : ColorsPalette.whiteColor),
        ),
      ),
    );
  }
}
