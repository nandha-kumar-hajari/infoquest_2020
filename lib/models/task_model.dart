class TaskModel {
  final String id;
  final String title;
  final String image;
  final List<String> categories;
  final String description;
  final String coordinators;
  final String prize;
  const TaskModel(
    this.id,
    this.title,
    this.image,
    this.categories,
    this.description,
    this.coordinators,
    this.prize,
  );
}
