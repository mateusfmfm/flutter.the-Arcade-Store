// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter_arcade_store/app/core/error/exception.dart';
import 'package:flutter_arcade_store/app/core/error/failure.dart';
import 'package:flutter_arcade_store/app/core/platform/network_info.dart';
import 'package:flutter_arcade_store/app/data/datasources/remote/products_remote_datasource.dart';
import 'package:flutter_arcade_store/app/data/models/product_model.dart';
import 'package:flutter_arcade_store/app/domain/entities/product_entitie.dart';
import 'package:flutter_arcade_store/app/domain/repositories/product_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductRemoteDataSource? productRemoteDataSource;
  final NetworkInfo? networkInfo;

  ProductsRepositoryImpl({
    required this.productRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Product>> getProduct(int id) async {
    return Right(await productRemoteDataSource!.getProduct(id));
  }

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    if (await networkInfo!.isConnected) {
      try {
        final List<ProductModel> products =
            await productRemoteDataSource!.getProducts();
        return Right(products);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }
}
