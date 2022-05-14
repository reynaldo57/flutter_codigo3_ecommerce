// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.id,
    required this.brand,
    required this.category,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.image,
    required this.activated,
  });

  int id;
  String brand;
  String category;
  String name;
  String description;
  int price;
  int stock;
  String image;
  bool activated;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    brand: json["brand"],
    category: json["category"],
    name: json["name"],
    description: json["description"],
    price: json["price"],
    stock: json["stock"],
    image: json["image"],
    activated: json["activated"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "brand": brand,
    "category": category,
    "name": name,
    "description": description,
    "price": price,
    "stock": stock,
    "image": image,
    "activated": activated,
  };
}
