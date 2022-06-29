import 'dart:convert';

import 'package:flutter_arcade_store/app/domain/entities/product_entitie.dart';

class ProductModel extends Product {
  final int? id;
  final String? title;
  final String? photoUrl;
  final String? brand;
  final int? year;
  final int? value;

  ProductModel({
    this.id,
    this.title,
    this.photoUrl,
    this.brand,
    this.year,
    this.value,
  }) : super(
          id: id,
          title: title,
          photoUrl: photoUrl,
          brand: brand,
          year: year,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'photoUrl': photoUrl,
      'brand': brand,
      'year': year,
      'value': value,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      photoUrl: map['photoUrl'] != null ? map['photoUrl'] as String : null,
      brand: map['brand'] != null ? map['brand'] as String : null,
      year: map['year'] != null ? map['year'] as int : null,
      value: map['value'] != null ? map['value'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, photoUrl: $photoUrl, brand: $brand, year: $year, value: $value)';
  }

  @override
  List<Object> get props => [
        id!,
        title!,
        photoUrl!,
        brand!,
        year!,
        value!,
      ];
}
