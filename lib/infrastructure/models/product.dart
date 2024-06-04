import 'package:regal_raiment/infrastructure/models/category_model.dart';
import 'brand_model.dart';

class Attributes {
  String color, size, material;
  Attributes({required this.color, required this.material, required this.size});
  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
      size: json['size'], color: json['color'], material: json['material']);
}

class Rating {
  int averageRating, totalReview;
  Rating({required this.averageRating, required this.totalReview});

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
      averageRating: json['averageRating'], totalReview: json['totalReview']);
}

class RetailUser {
  String id, name, description;
  RetailUser({required this.id, required this.name, required this.description});
  factory RetailUser.fromJson(Map<String, dynamic> json) => RetailUser(
      id: json['id'], name: json['name'], description: json['description']);
}

class Availability {
  bool inStock;
  int stockQuantity;
  Availability({required this.inStock, required this.stockQuantity});
  factory Availability.fromJson(Map<String, dynamic> json) => Availability(
      inStock: json['inStock'], stockQuantity: json['stockQuantity']);
}

class ProductModel {
  BrandModel brand;
  CategoryModel category;
  String name, description;
  int price;
  List<String> images;
  Attributes attributes;
  Rating rating;
  RetailUser retailUser;
  Availability availability;

  ProductModel(
      {required this.attributes,
      required this.availability,
      required this.brand,
      required this.category,
      required this.description,
      required this.images,
      required this.name,
      required this.price,
      required this.rating,
      required this.retailUser});
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      attributes: Attributes.fromJson(json['attributes']),
      availability: Availability.fromJson(json['availability']),
      brand: BrandModel.fromJson(json['brand']),
      category: CategoryModel.fromJson(json['category']),
      description: json['description'],
      images: json['images'],
      name: json['name'],
      price: json['price'],
      rating: json['rating'],
      retailUser: RetailUser.fromJson(json['retailUser']));
}
