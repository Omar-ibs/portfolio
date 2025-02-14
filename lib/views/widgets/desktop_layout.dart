import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/home_view_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: HomeViewBody(),
        ),
      ],
    );
  }
}
