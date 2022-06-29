part of 'products_bloc.dart';

@immutable
abstract class ProductsEvent extends Equatable {
  const ProductsEvent();
}

class LoadingSuccessProductsEvent extends ProductsEvent {
  @override
  List<Object?> get props => [];
}

class GetProductEvent extends ProductsEvent {
  final int? id;
  const GetProductEvent(this.id);

  @override
  List<Object?> get props => [];
}

class NetworkErrorEvent extends Error {}
