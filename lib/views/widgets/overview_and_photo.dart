import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/my_pic_animation.dart';
import 'package:portfolio/views/widgets/overview.dart';

class OverviewAndPhoto extends StatelessWidget {
  const OverviewAndPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Overview(),
        SizedBox(
          width: 136,
        ),
        MyPicAnimation(),
      ],
    );
  }
}
