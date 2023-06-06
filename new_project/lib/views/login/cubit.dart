/*
class LoginCubit {
  final emailController = TextEditingController(text: CacheHelper.getEmail());
  final passwordController = TextEditingController(text: CacheHelper.getPhone());

  Future<UserData> login() async {
    final response = await Dio().post("https://transfer-me.wanderguide.net/api/users/login", data: {
      "email": emailController.text,
      "password": passwordController.text,
      "type": "student"
    }).then((value) => value);

    print(response.data.toString());
    final model = UserData.fromJson(response.data);
    return model;
  }


}

 */


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/dio_helper.dart';

part 'states.dart';

abstract class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  final dioHelper = DioHelper();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    //if (formKey.currentState!.validate()) {
      // send request
      //if (myImage != null) {
      emit(LoginLoadingState());
        try{
          final response = await dioHelper.sendData(endPoint: "initial/users/register");
          dioHelper
              .sendData(
              endPoint: "intial/users/register",
              data: FormData.fromMap({
                "email": emailController.text,
                "password": passwordController.text,
              }));
          print(response.statusCode);
          print(response.data);
          print(response.requestOptions.data);
          print(response.requestOptions.path);
        }
        catch (ex){
          print(ex.toString());
        }


        //.then((value) {
        //print(value.data.toString());
        //emit(LoginSuccessState("Done"));
        //}).catchError((error) {
        //emit(LoginFailedState(error.toString()));
        //});
      //}
      //else {
      //  showMessage(message: "Please Select Image First");
      //}
    }
  }
