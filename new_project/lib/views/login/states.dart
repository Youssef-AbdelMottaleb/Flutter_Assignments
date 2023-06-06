/*
class UserData{
  late final bool status;
  late final String msg;
  late final Data data;

  UserData.fromJson(Map<String,dynamic> json){
    status = json["status"]?? false;
    msg = json["msg"]??"";
    data = Data.fromJson(json["data"]);
  }
}

class Data{
  late final User user;

  Data.fromJson(Map<String,dynamic> json){
    user = User.fromJson(json["user"]);
  }
}

class User{
  late final int id;
  late final String userName;
  late final String fullName;
  late final String phone;
  late final String status;
  late final String email;
  late final String image;
  late final String rememberToken;

  User.fromJson(Map<String,dynamic> json){
    id = json["id"]??0;
    userName = json["user_name"]??"";
    fullName = json["full_name"]??"";
    phone = json["phone"]??"";
    status = json["status"]??"";
    email = json["email"]??"";
    image = json["image"]??"";
    rememberToken = json["remember_token"]??"";


  }
}

 */

part of "cubit.dart";

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginChangeImageState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginFailedState extends LoginStates {
  final String message;
  LoginFailedState(this.message);
}

class LoginSuccessState extends LoginStates {
  final String message;
  LoginSuccessState(this.message);
}