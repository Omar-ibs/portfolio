import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/views/widgets/AdaptiveLayout.dart';
import 'package:portfolio/views/widgets/desktop_layout.dart';
import 'package:portfolio/views/widgets/mobile_layout.dart';
import 'package:portfolio/views/widgets/tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.center,
            colors: [
              ColorsPalette.blackColor,
              Color(0xff13203d),
              // Color(0xff2d467e),
              //Color(0xff1b2b50),
            ],
          ),
        ),
        child: SafeArea(
          child: AdaptiveLayout(
            mobileLayout: (context) => const MobileLayout(),
            tabletLayout: (context) => const TabletLayout(),
            desktopLayout: (context) => const DesktopLayout(),
          ),
        ),
      ),
    );
  }
}
