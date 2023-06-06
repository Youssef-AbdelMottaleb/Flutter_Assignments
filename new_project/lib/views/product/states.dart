part of "cubit.dart";

abstract class ProductStates {}

class ProductInitialState extends ProductStates {}

class GetProductLoadingState extends ProductStates {}

class GetProductFailedState extends ProductStates {

  final String message;

  GetProductFailedState({required this.message});

}

class GetProductSuccessState extends ProductStates {

  final String message;

  GetProductSuccessState({required this.message});

}