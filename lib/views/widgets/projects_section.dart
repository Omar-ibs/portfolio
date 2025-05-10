import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/project_card.dart';
import 'package:portfolio/views/widgets/project_model_list.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final List<bool> _isHovered = List.filled(6, false);
  late final ProjectModelList projectModelList;
  @override
  void initState() {
    projectModelList = ProjectModelList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: 140,
      width: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: projectModelList.projectModel.length,
        padding: const EdgeInsets.symmetric(horizontal: 70),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MouseRegion(
            onEnter: (_) => setState(() => _isHovered[index] = true),
            onExit: (_) => setState(() => _isHovered[index] = false),
            child: ProjectCard(
              isHovered: _isHovered,
              index: index,
              projectModel: projectModelList.projectModel[index],
            ),
          ),
        ),
      ),
    );
  }
}
