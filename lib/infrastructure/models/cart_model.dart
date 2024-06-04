import 'package:regal_raiment/infrastructure/models/cart_item.dart';

class CartModel {
  List<CartItem> cartItems;
  int total;

  CartModel({required this.cartItems, required this.total});

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
      cartItems: List<CartItem>.from(
          json['cartItem'].map((e) => CartItem.fromJson(e))),
      total: json['total']);
}
