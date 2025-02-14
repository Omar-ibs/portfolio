import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/project_model.dart';

class ClickableProjectImages extends StatelessWidget {
  const ClickableProjectImages({
    super.key,
    required this.projectModel,
    required this.index,
  });

  final ProjectModel projectModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => Dialog(
            backgroundColor: Colors.transparent,
            child: InteractiveViewer(
              child: Image.asset(
                projectModel.projectImages[index],
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      },
      child: Image.asset(
        projectModel.projectImages[index],
        fit: BoxFit.fill,
      ),
    );
  }
}
