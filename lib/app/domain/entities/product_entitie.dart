// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int? id;
  final String? title;
  final String? photoUrl;
  final String? brand;
  final int? year;
  final num? value;

  Product({
    this.id,
    this.title,
    this.photoUrl,
    this.brand,
    this.year,
    this.value,
  });

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
