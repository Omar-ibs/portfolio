import 'package:flutter/material.dart';
import 'package:portfolio/utils/font_styles.dart';
import 'package:portfolio/views/widgets/contact_section.dart';
import 'package:portfolio/views/widgets/mobile_about_me_section.dart';
import 'package:portfolio/views/widgets/my_pic_animation.dart';
import 'package:portfolio/views/widgets/overview.dart';
import 'package:portfolio/views/widgets/projects_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Overview(),
              const MyPicAnimation(),
              const SizedBox(
                height: 30,
              ),
              const MobileAboutMeSection(),
              const SizedBox(
                height: 50.0,
              ),
              Text(
                'Projects',
                style: FontStyles.s48semiBoldText(context),
              ),
              const SizedBox(
                height: 50,
              ),
              const ProjectsSection(),
              Text(
                'Contact',
                style: FontStyles.s48semiBoldText(context),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const ContactSection(),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
