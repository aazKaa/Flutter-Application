// To parse this JSON data, do
//
//     final kulinerModel = kulinerModelFromJson(jsonString);

import 'dart:convert';

KulinerModel kulinerModelFromJson(String str) =>
    KulinerModel.fromJson(json.decode(str));

String kulinerModelToJson(KulinerModel data) => json.encode(data.toJson());

class KulinerModel {
  final List<Category> categories;

  KulinerModel({required this.categories});

  factory KulinerModel.fromJson(Map<String, dynamic> json) {
    final categoriesJson = json["categories"];
    if (categoriesJson is! List<dynamic>) {
      throw const FormatException("Invalid categories in API response");
    }

    return KulinerModel(
      categories: categoriesJson.map((categoryJson) {
        if (categoryJson is! Map<String, dynamic>) {
          throw const FormatException("Invalid category in API response");
        }
        return Category.fromJson(categoryJson);
      }).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
  };
}

class Category {
  final String idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;

  Category({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    idCategory: json["idCategory"] as String,
    strCategory: json["strCategory"] as String,
    strCategoryThumb: json["strCategoryThumb"] as String,
    strCategoryDescription: json["strCategoryDescription"] as String,
  );

  Map<String, dynamic> toJson() => {
    "idCategory": idCategory,
    "strCategory": strCategory,
    "strCategoryThumb": strCategoryThumb,
    "strCategoryDescription": strCategoryDescription,
  };
}
