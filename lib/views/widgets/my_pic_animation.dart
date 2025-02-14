import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MyPicAnimation extends StatelessWidget {
  const MyPicAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(
          duration: Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
        ),
        SlideEffect(
          begin: Offset(1, 0),
          end: Offset(0, 0),
          duration: Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
        ),
      ],
      child: Image.asset(
        'assets/images/MyPic.JPG',
        height: 636,
        width: 536,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
