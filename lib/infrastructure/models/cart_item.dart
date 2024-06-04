import 'package:regal_raiment/infrastructure/models/productBasicModel.dart';

class CartItem {
  ProductBasicModel productModel;
  int count, amount;

  CartItem(
      {required this.productModel, required this.amount, required this.count});

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
      productModel: ProductBasicModel.fromJson(json['product']),
      amount: json['amount'],
      count: json['count']);
}
