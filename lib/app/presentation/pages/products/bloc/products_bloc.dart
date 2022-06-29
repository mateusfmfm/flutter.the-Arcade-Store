// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arcade_store/app/domain/entities/product_entitie.dart';
import 'package:flutter_arcade_store/app/domain/repositories/product_repository.dart';
import 'package:flutter_arcade_store/app/domain/usecases/product_usecase.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsRepository? repository;
  final GetProduct? getProduct;
  final GetProducts? getProducts;

  ProductsBloc({
    final GetProduct? receivedGetProduct,
    final GetProducts? receivedGetProducts,
  })  : assert(receivedGetProduct != null),
        assert(receivedGetProducts != null),
        getProduct = receivedGetProduct,
        getProducts = receivedGetProducts,
        super(InitialState());

  ProductsState get initialState => LoadingState();

  Stream<ProductsState> mapEventToState(ProductsEvent event) async* {
    LoadingState();
    if (event is LoadingSuccessProductsEvent) {
      yield* _mapProductsLoadedToState();
    }
  }

  Stream<ProductsState> _mapProductsLoadedToState() async* {
    try {
      var products = await repository!.getProducts();

      yield products.fold(
        (failure) => ErrorState("Error loading products"),
        (products) => LoadedSuccessState(products),
      );
    } catch (_) {
      ErrorState("Error loading products");
    }
    ;
  }
}
