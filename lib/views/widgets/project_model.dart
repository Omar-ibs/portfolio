class ProjectModel {
  final List<String> projectImages;
  final String projectName;
  final String? projectLink;
  final String description;

  ProjectModel(
      {required this.projectImages,
      required this.projectName,
      required this.projectLink,
      required this.description});
}
