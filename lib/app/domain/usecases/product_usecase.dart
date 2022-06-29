import 'package:dartz/dartz.dart';
import 'package:flutter_arcade_store/app/core/error/failure.dart';
import 'package:flutter_arcade_store/app/domain/entities/product_entitie.dart'
    as entitie;
import 'package:flutter_arcade_store/app/domain/repositories/product_repository.dart';

class GetProduct {
  final ProductsRepository repository;
  GetProduct({required this.repository});

  Future<Either<Failure, entitie.Product>> call(entitie.Product product) async {
    return await repository.getProduct(product.id!);
  }
}

class GetProducts {
  final ProductsRepository repository;
  GetProducts({required this.repository});

  Future<Either<Failure, List<entitie.Product>>> call(
      entitie.Product product) async {
    return await repository.getProducts();
  }
}
