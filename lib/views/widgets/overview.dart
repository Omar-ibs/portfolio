import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/utils/font_styles.dart';

class Overview extends StatelessWidget {
  const Overview({
    super.key,
  });
  final Duration descriptionDuration = const Duration(milliseconds: 200);
  final Duration headingDuration = const Duration(milliseconds: 1500);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 200.0),
      child: SizedBox(
        width: 900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Animate(
              effects: [
                SlideEffect(
                    begin: const Offset(-1, 0),
                    end: const Offset(0, 0),
                    duration: headingDuration,
                    curve: Curves.easeInOut),
                FadeEffect(duration: headingDuration, curve: Curves.easeInOut),
              ],
              child: Text(
                'Welcome to my portfolio Let me introduce myself',
                style: FontStyles.s72semiBoldText(context).copyWith(
                  color: ColorsPalette.whiteColor,
                ),
                maxLines: 6,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Animate(
              effects: [
                SlideEffect(
                    begin: const Offset(-1, 0),
                    end: const Offset(0, 0),
                    delay: descriptionDuration,
                    duration: headingDuration,
                    curve: Curves.easeInOut),
                FadeEffect(
                    delay: descriptionDuration,
                    duration: headingDuration,
                    curve: Curves.easeInOut),
              ],
              child: Text(
                'I\'m Omar, a software developer specializing in building beautiful, high-performance mobile applications that deliver seamless user experiences',
                style: FontStyles.s18regularText(context).copyWith(
                  color: ColorsPalette.whiteColor,
                ),
                maxLines: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
