import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/views/widgets/active_navbar_item.dart';
import 'package:portfolio/views/widgets/inActive_navBar_item.dart';

class NavBarItem extends StatefulWidget {
  const NavBarItem(
      {super.key, required this.itemTitle, required this.isSelected});
  final String itemTitle;
  final bool isSelected;
  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isSelected = widget.isSelected;
      }),
      child: isSelected
          ? ActiveNavbarItem(
              itemTitle: widget.itemTitle,
            )
          : InActiveNavBarItem(
              itemTitle: widget.itemTitle,
            ),
    );
  }
}
