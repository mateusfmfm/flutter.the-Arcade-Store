import 'package:dartz/dartz.dart';
import 'package:flutter_arcade_store/app/core/error/failure.dart';
import 'package:flutter_arcade_store/app/domain/entities/product_entitie.dart';

abstract class ProductsRepository {
  Future<Either<Failure, List<Product>>> getProducts();
  Future<Either<Failure, Product>> getProduct(int id);
}