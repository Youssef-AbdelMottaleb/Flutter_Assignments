part of "cubit.dart";

abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterChangeImageState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterFailedState extends RegisterStates {
  final String message;
  RegisterFailedState(this.message);
}

class RegisterSuccessState extends RegisterStates {
  final String message;
  RegisterSuccessState(this.message);
}