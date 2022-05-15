
import 'dart:convert';

// Banner bannerFromJson(String str) => Banner.fromJson(json.decode(str));
//
// String bannerToJson(Banner data) => json.encode(data.toJson());

class BrandModel {
  BrandModel({
    required this.id,
    required this.image,
    required this.brand,
    required this.activated,
  });

  int id;
  String image;
  String brand;
  bool activated;

  factory BrandModel.fromJson(Map<String, dynamic> json) => BrandModel(
    id: json["id"],
    image: json["image"],
    brand: json["brand"],
    activated: json["activated"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "description": brand,
    "activated": activated,
  };
}
