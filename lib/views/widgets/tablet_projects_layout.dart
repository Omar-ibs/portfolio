import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/project_card.dart';
import 'package:portfolio/views/widgets/project_model_list.dart';

class TabletProjectsLayout extends StatefulWidget {
  const TabletProjectsLayout({super.key});

  @override
  State<TabletProjectsLayout> createState() => _TabletProjectsLayoutState();
}

class _TabletProjectsLayoutState extends State<TabletProjectsLayout> {
  final List<bool> _isHovered = List.filled(6, false);
  late final ProjectModelList projectModelList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    projectModelList = ProjectModelList();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: width > 1100 ? 1000 : 2000,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 70),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: width > 1100 ? 3 : 2,
          crossAxisSpacing: 30,
          childAspectRatio: width > 1100 ? 1 / 1.6 : 1 / 1.5,
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
