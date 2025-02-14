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
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: width < 800 ? 2700 : 1000,
      width: width < 800 ? 500 : width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 70),
        gridDelegate: width < 800
            ? const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 30,
                childAspectRatio: 1 / 1.25,
              )
            : const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 30,
                childAspectRatio: 1,
                mainAxisSpacing: 25,
              ),
        itemBuilder: (context, index) => MouseRegion(
          onEnter: (_) => setState(() => _isHovered[index] = true),
          onExit: (_) => setState(() => _isHovered[index] = false),
          child: ProjectCard(
            isHovered: _isHovered,
            index: index,
            projectModel: projectModelList.projectModel[index],
          ),
        ),
      ),
    );
  }
}
