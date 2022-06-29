import 'dart:convert';

import 'package:flutter_arcade_store/app/core/error/exception.dart';
import 'package:flutter_arcade_store/app/data/models/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProduct(int id);
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<ProductModel> getProduct(int id) async {
    try {
      final response = await http.get(Uri());
      return (response.statusCode == 200)
          ? ProductModel.fromJson(response.body)
          : throw ServerException("Status code error: ${response.statusCode}}");
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await http.get(Uri());
      if (response.statusCode == 200) {
        List<ProductModel> result = (jsonDecode(response.body) as List)
            .map((i) => ProductModel.fromJson(i))
            .toList();

        return result;
      } else {
        throw ServerException("Status code error: ${response.statusCode}}");
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
