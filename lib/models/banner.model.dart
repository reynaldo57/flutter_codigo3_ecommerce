
import 'dart:convert';

// Banner bannerFromJson(String str) => Banner.fromJson(json.decode(str));
//
// String bannerToJson(Banner data) => json.encode(data.toJson());

class BannerModel {
  BannerModel({
    required this.id,
    required this.image,
    required this.description,
    required this.activated,
  });

  int id;
  String image;
  String description;
  bool activated;

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
    id: json["id"],
    image: json["image"],
    description: json["description"],
    activated: json["activated"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "description": description,
    "activated": activated,
  };
}
