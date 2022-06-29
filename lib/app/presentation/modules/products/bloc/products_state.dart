part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();
  @override
  List<Object?> get props => [];
}

class InitialState extends ProductsState {
  const InitialState();
  @override
  List<Object?> get props => [];
}

class LoadingState extends ProductsState {
  const LoadingState();
  @override
  List<Object?> get props => [];
}

class LoadedSuccessState extends ProductsState {
  final List<Product> product;
  const LoadedSuccessState(this.product);
  @override
  List<Object?> get props => [product];
}

class ErrorState extends ProductsState {
  final String? message;
  const ErrorState(this.message);
  @override
  List<Object?> get props => [];
}
