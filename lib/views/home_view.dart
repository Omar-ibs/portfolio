import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/views/widgets/home_view_body.dart';

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
            ],
          ),
        ),
        child: const SafeArea(
          child: SingleChildScrollView(child: HomeViewBody()),
        ),
      ),
    );
  }
}
