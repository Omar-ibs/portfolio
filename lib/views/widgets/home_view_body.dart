import 'package:flutter/material.dart';
import 'package:portfolio/utils/font_styles.dart';
import 'package:portfolio/views/widgets/desktop_aboutMeSection.dart';
import 'package:portfolio/views/widgets/contact_section.dart';
import 'package:portfolio/views/widgets/overview.dart';
import 'package:portfolio/views/widgets/projects_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70.0), child: Overview()),
      const SizedBox(
        height: 30.0,
      ),
      const AboutMeAnimation(),
      const SizedBox(
        height: 100.0,
      ),
      Text(
        'Projects',
        style: FontStyles.s48semiBoldText(context),
      ),
      const SizedBox(
        height: 30.0,
      ),
      const ProjectsSection(),
      const SizedBox(
        height: 20,
      ),
      Text(
        'Contact',
        style: FontStyles.s48semiBoldText(context),
      ),
      const SizedBox(
        height: 20,
      ),
      const ContactSection(),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
