import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/utils/font_styles.dart';

class ActiveNavbarItem extends StatelessWidget {
  const ActiveNavbarItem({super.key, required this.itemTitle});
  final String itemTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      color: ColorsPalette.whiteColor,
      child: Text(
        itemTitle,
        style: FontStyles.s16semiBoldText(context)
            .copyWith(fontFamily: 'WorkSans', color: ColorsPalette.blackColor),
      ),
    );
  }
}
