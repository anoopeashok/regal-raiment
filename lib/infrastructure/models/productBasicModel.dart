class ProductBasicModel {
  String id, name, description, image;
  ProductBasicModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.image});

  factory ProductBasicModel.fromJson(Map<String, dynamic> json) =>
      ProductBasicModel(
          id: json['id'],
          name: json['name'],
          description: json['description'],
          image: json['image']);
}
