class CategoryModel {
  String name, description, id;

  CategoryModel(
      {required this.id, required this.name, required this.description});

  factory CategoryModel.fromJson(Map<String, dynamic> data) => CategoryModel(
      id: data['id'], name: data['name'], description: data['description']);
}
