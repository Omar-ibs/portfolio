import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/utils/font_styles.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMeAnimation extends StatefulWidget {
  const AboutMeAnimation({
    super.key,
  });

  @override
  State<AboutMeAnimation> createState() => _AboutMeAnimationState();
}

class _AboutMeAnimationState extends State<AboutMeAnimation> {
  bool _isVisible = false;
  double _opacity = 0;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('About-me-animation'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > -0.5) {
          setState(() {
            _isVisible = true;
            _opacity = 1;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 100),
        child: Animate(
          effects: _isVisible
              ? const [
                  FadeEffect(
                    duration: Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                  ),
                  SlideEffect(
                    begin: Offset(-1, 0),
                    end: Offset(0, 0),
                    duration: Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                  ),
                ]
              : [],
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 112, horizontal: 75),
            margin: const EdgeInsets.symmetric(horizontal: 70),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  ColorsPalette.blackColor,
                  Color(0xff13203d),
                ],
              ),
            ),
            child: Row(
              children: [
                Text(
                  'About \n me',
                  style: FontStyles.s72semiBoldText(context)
                      .copyWith(color: ColorsPalette.whiteColor),
                ),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                  height: 348,
                  width: 536,
                  child: Column(
                    children: [
                      Text(
                        'I am Professional Flutter Developer',
                        style: FontStyles.s38semiBoldText(context).copyWith(
                          color: ColorsPalette.whiteColor,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'I am Flutter developer with solid understanding in Flutter and dart, I build responsive and adaptive applications within RESTFUL API and integrating services like Firebase and supabase, also with different design architectures like MVC, MVVM, Clean architecture',
                        style: FontStyles.s18regularText(context).copyWith(
                          color: ColorsPalette.whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 440,
                  width: 305,
                  child: Column(children: [
                    Text(
                      'Skills\n',
                      style: FontStyles.s38semiBoldText(context)
                          .copyWith(color: ColorsPalette.whiteColor),
                    ),
                    Text(
                      '   • Dart,Flutter \n'
                      '   • BLOC,Provider\n'
                      '   • Supabase,Firebase,RESTFul\n      API\n'
                      '   • Git,Github\n'
                      '   • MySQL\n'
                      '   • MVVM,Clean Architecture\n '
                      '  • HTML,CSS\n ',
                      style: FontStyles.s18regularText(context).copyWith(
                        color: ColorsPalette.whiteColor,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
