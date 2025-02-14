import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/utils/font_styles.dart';

class Overview extends StatelessWidget {
  const Overview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 200.0),
      child: Column(
        children: [
          Animate(
            effects: const [
              SlideEffect(
                  begin: Offset(-1, 0),
                  end: Offset(0, 0),
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.easeInOut),
              FadeEffect(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.easeInOut),
            ],
            child: Text(
              'Hello, I’m \nOmar Abdulsattar',
              style: FontStyles.s72semiBoldText(context).copyWith(
                color: ColorsPalette.whiteColor,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Animate(
            effects: const [
              SlideEffect(
                  begin: Offset(-1, 0),
                  end: Offset(0, 0),
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.easeInOut),
              FadeEffect(
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.easeInOut),
            ],
            child: Text(
              'I’m a Flutter developer, and I love \nto build beautiful and performant apps.',
              style: FontStyles.s18regularText(context).copyWith(
                color: ColorsPalette.whiteColor,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 24,
          // ),
        ],
      ),
    );
  }
}
