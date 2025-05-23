import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/utils/font_styles.dart';
import 'package:portfolio/views/widgets/clickable_project_images.dart';
import 'package:portfolio/views/widgets/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required List<bool> isHovered,
    required this.index,
    required this.projectModel,
  }) : _isHovered = isHovered;
  final int index;
  final List<bool> _isHovered;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //showProjectBottomSheet(context, projectModel);
        showAlertDialog(context);
      },
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _isHovered[index]
                  ? const Color.fromARGB(255, 43, 135, 174)
                  : ColorsPalette.whiteColor,
              width: 2,
            ),
            gradient: const LinearGradient(
              end: Alignment.center,
              colors: [
                ColorsPalette.blackColor,
                Color(0xff13203d),
              ],
            ),
            boxShadow: _isHovered[index]
                ? [
                    const BoxShadow(
                      color: Color.fromARGB(255, 43, 135, 174),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ]
                : [],
            color: ColorsPalette.whiteColor),
        child: Center(
          child: Text(
            projectModel.projectName,
            style: FontStyles.s32mediumText(context)
                .copyWith(color: ColorsPalette.whiteColor),
          ),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shape: const RoundedRectangleBorder(),
          scrollable: true,
          backgroundColor: ColorsPalette.whiteColor,
          title: Text(projectModel.projectName),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: projectModel.projectImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ClickableProjectImages(
                        projectModel: projectModel,
                        index: index,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                projectModel.description,
                style: FontStyles.s16semiBoldText(context),
              ),
            ],
          ),
          actions: [
            projectModel.projectLink != null
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () async {
                      final url = projectModel.projectLink;
                      final Uri uri = Uri.parse(url!);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Could not launch the URL.'),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'View on GitHub',
                      style: TextStyle(color: ColorsPalette.whiteColor),
                    ),
                  )
                : const SizedBox(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        );
      },
    );
  }
}
