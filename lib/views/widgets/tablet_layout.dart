import 'package:flutter/material.dart';
import 'package:portfolio/utils/font_styles.dart';
import 'package:portfolio/views/widgets/contact_section.dart';
import 'package:portfolio/views/widgets/desktop_aboutMeSection.dart';
import 'package:portfolio/views/widgets/my_pic_animation.dart';
import 'package:portfolio/views/widgets/overview.dart';
import 'package:portfolio/views/widgets/tablet_projects_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const FittedBox(
              child: Column(
                spacing: 50,
                children: [
                  Row(
                    spacing: 16,
                    children: [
                      Overview(),
                      MyPicAnimation(),
                    ],
                  ),
                  AboutMeAnimation(),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const TabletProjectsLayout(),
            Text(
              'Contact',
              style: FontStyles.s48semiBoldText(context),
            ),
            const ContactSection(),
          ],
        ),
      ),
    );
  }
}
