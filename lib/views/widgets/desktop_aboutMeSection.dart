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
    double width = MediaQuery.sizeOf(context).width;
    return VisibilityDetector(
      key: const Key('About-me-animation'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.3) {
          setState(() {
            _isVisible = true;
            _opacity = 1;
          });
        } else {
          setState(() {
            _isVisible = false;
            _opacity = 0;
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
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 50),
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
            child: Column(
              spacing: 50,
              children: [
                Text(
                  'About me',
                  style: FontStyles.s72semiBoldText(context)
                      .copyWith(color: ColorsPalette.whiteColor),
                ),
                width >= 800
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              spacing: 32,
                              children: [
                                Text(
                                  'I am Professional Flutter Developer',
                                  style: FontStyles.s38semiBoldText(context)
                                      .copyWith(
                                    color: ColorsPalette.whiteColor,
                                  ),
                                ),
                                Text(
                                  'I am Flutter developer with solid understanding in Flutter and dart, I build responsive and adaptive applications within RESTFUL API and integrating services like Firebase and supabase, also with different design architectures like MVC, MVVM, Clean architecture',
                                  style: FontStyles.s18regularText(context)
                                      .copyWith(
                                    color: ColorsPalette.whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              spacing: 32,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Skills',
                                  style: FontStyles.s38semiBoldText(context)
                                      .copyWith(
                                          color: ColorsPalette.whiteColor),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 32.0),
                                  child: Row(
                                    spacing: 24,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '• Dart,Flutter',
                                              style: FontStyles.s18regularText(
                                                      context)
                                                  .copyWith(
                                                color: ColorsPalette.whiteColor,
                                              ),
                                            ),
                                            Text(
                                              '• BLOC,Provider',
                                              style: FontStyles.s18regularText(
                                                      context)
                                                  .copyWith(
                                                color: ColorsPalette.whiteColor,
                                              ),
                                            ),
                                            Text(
                                              '• MySQL',
                                              style: FontStyles.s18regularText(
                                                      context)
                                                  .copyWith(
                                                color: ColorsPalette.whiteColor,
                                              ),
                                            ),
                                            Text(
                                              '• HTML,CSS',
                                              style: FontStyles.s18regularText(
                                                      context)
                                                  .copyWith(
                                                color: ColorsPalette.whiteColor,
                                              ),
                                            ),
                                          ]),
                                      SizedBox(
                                        width: width * 0.15,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '• Supabase,Firebase and RESTFul API',
                                              style: FontStyles.s18regularText(
                                                      context)
                                                  .copyWith(
                                                color: ColorsPalette.whiteColor,
                                              ),
                                            ),
                                            Text(
                                              '• Git,Github',
                                              style: FontStyles.s18regularText(
                                                      context)
                                                  .copyWith(
                                                color: ColorsPalette.whiteColor,
                                              ),
                                            ),
                                            Text(
                                              '• MVVM,Clean Architecture,MVC',
                                              style: FontStyles.s18regularText(
                                                      context)
                                                  .copyWith(
                                                color: ColorsPalette.whiteColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        spacing: 32,
                        children: [
                          Column(
                            spacing: 32,
                            children: [
                              Text(
                                'I am Professional Flutter Developer',
                                style: FontStyles.s38semiBoldText(context)
                                    .copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                              Text(
                                'I am Flutter developer with solid understanding in Flutter and dart, I build responsive and adaptive applications within RESTFUL API and integrating services like Firebase and supabase, also with different design architectures like MVC, MVVM, Clean architecture',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              )
                            ],
                          ),
                          Column(
                            spacing: 14,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Skills',
                                style: FontStyles.s38semiBoldText(context)
                                    .copyWith(color: ColorsPalette.whiteColor),
                              ),
                              Text(
                                '• Dart,Flutter',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                              Text(
                                '• BLOC,Provider',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                              Text(
                                '• MySQL',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                              Text(
                                '• HTML,CSS',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                              Text(
                                '• Supabase,Firebase and RESTFul API',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                              Text(
                                '• Git,Github',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                              Text(
                                '• MVVM,Clean Architecture,MVC',
                                style:
                                    FontStyles.s18regularText(context).copyWith(
                                  color: ColorsPalette.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
